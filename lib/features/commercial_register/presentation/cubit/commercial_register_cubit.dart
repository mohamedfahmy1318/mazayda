import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/commercial_register.dart';
import '../../domain/usecases/commercial_register_usecases.dart';

part 'commercial_register_cubit.freezed.dart';

/// الحد الأقصى لحجم المرفق (KB) — مطابق لـ setting('commercial_register.doc_max_kb').
const _kMaxDocKb = 2048;

/// أخطاء التحقق المحلية — نفس قواعد SubmitCommercialRegisterRequest.
enum CrFieldError { required, tooLong, futureDate, fileTooLarge }

@freezed
class CommercialRegisterState with _$CommercialRegisterState {
  const CommercialRegisterState._();

  const factory CommercialRegisterState({
    @Default(true) bool loading,
    @Default(false) bool submitting,
    @Default(false) bool submitted,
    CommercialRegister? register,
    String? error,
    Map<String, List<String>>? serverErrors,

    // حقول النموذج
    @Default('') String companyName,
    @Default('') String registerNumber,
    @Default('') String taxNumber,
    @Default('') String activityType,
    String? startDate, // Y-M-D
    String? registerDocumentPath,
    String? taxCardDocumentPath,

    /// نعرض أخطاء الحقول بعد أول محاولة إرسال فقط.
    @Default(false) bool showErrors,
  }) = _CommercialRegisterState;

  bool get isApproved =>
      register?.status == CommercialRegisterStatus.approved;

  /// السيرفر قافل الإرسال (سجل معتمد).
  bool get isLocked => register != null && !register!.canSubmit;

  CrFieldError? get companyNameError => _text(companyName, 255);
  CrFieldError? get registerNumberError => _text(registerNumber, 100);
  CrFieldError? get taxNumberError => _text(taxNumber, 100);
  CrFieldError? get activityTypeError => _text(activityType, 255);

  CrFieldError? get startDateError {
    if ((startDate ?? '').isEmpty) return CrFieldError.required;
    final d = DateTime.tryParse(startDate!);
    if (d == null) return CrFieldError.required;
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    // before_or_equal:today — تاريخ إصدار سجل حقيقي، فمينفعش يكون في المستقبل.
    return d.isAfter(today) ? CrFieldError.futureDate : null;
  }

  /// الملف مطلوب فقط لو مفيش نسخة محفوظة على السيرفر.
  CrFieldError? documentError(CrDocumentType type) {
    final path = pathFor(type);
    if (path != null) {
      return _fileTooLarge(path) ? CrFieldError.fileTooLarge : null;
    }
    final needed = register?.requiresUpload(type) ?? true;
    return needed ? CrFieldError.required : null;
  }

  String? pathFor(CrDocumentType type) => switch (type) {
    CrDocumentType.register => registerDocumentPath,
    CrDocumentType.taxCard => taxCardDocumentPath,
  };

  bool get isValid =>
      companyNameError == null &&
      registerNumberError == null &&
      taxNumberError == null &&
      activityTypeError == null &&
      startDateError == null &&
      documentError(CrDocumentType.register) == null &&
      documentError(CrDocumentType.taxCard) == null;

  bool get canSubmit => isValid && !submitting && !isLocked;

  static CrFieldError? _text(String v, int max) {
    if (v.trim().isEmpty) return CrFieldError.required;
    if (v.trim().length > max) return CrFieldError.tooLong;
    return null;
  }

  static bool _fileTooLarge(String path) {
    try {
      return File(path).lengthSync() > _kMaxDocKb * 1024;
    } catch (_) {
      return false;
    }
  }
}

@injectable
class CommercialRegisterCubit extends Cubit<CommercialRegisterState> {
  final GetCommercialRegister _get;
  final SubmitCommercialRegister _submit;

  CommercialRegisterCubit(this._get, this._submit)
    : super(const CommercialRegisterState());

  Future<void> load() async {
    emit(state.copyWith(loading: true, error: null));
    final res = await _get(const NoParams());
    if (isClosed) return;
    res.fold(
      (f) => emit(state.copyWith(loading: false, error: f.message)),
      (reg) => emit(
        state.copyWith(
          loading: false,
          register: reg,
          // نملأ النموذج بالبيانات المحفوظة — مهم جدًا لمستخدم اترفض
          // طلبه وعايز يعدّل حقل واحد بس.
          companyName: reg.companyName ?? state.companyName,
          registerNumber: reg.registerNumber ?? state.registerNumber,
          taxNumber: reg.taxNumber ?? state.taxNumber,
          activityType: reg.activityType ?? state.activityType,
          startDate: reg.startDate == null
              ? state.startDate
              : _fmtDate(reg.startDate!),
        ),
      ),
    );
  }

  void companyNameChanged(String v) => emit(state.copyWith(companyName: v));
  void registerNumberChanged(String v) =>
      emit(state.copyWith(registerNumber: v));
  void taxNumberChanged(String v) => emit(state.copyWith(taxNumber: v));
  void activityTypeChanged(String v) => emit(state.copyWith(activityType: v));
  void startDateChanged(DateTime d) =>
      emit(state.copyWith(startDate: _fmtDate(d)));

  void documentPicked(CrDocumentType type, String path) => emit(
    switch (type) {
      CrDocumentType.register => state.copyWith(registerDocumentPath: path),
      CrDocumentType.taxCard => state.copyWith(taxCardDocumentPath: path),
    },
  );

  Future<void> submit() async {
    if (!state.isValid) {
      emit(state.copyWith(showErrors: true));
      return;
    }
    emit(
      state.copyWith(
        submitting: true,
        error: null,
        serverErrors: null,
        showErrors: true,
      ),
    );

    final res = await _submit(
      SubmitCommercialRegisterParams(
        companyName: state.companyName.trim(),
        registerNumber: state.registerNumber.trim(),
        taxNumber: state.taxNumber.trim(),
        activityType: state.activityType.trim(),
        startDate: state.startDate!,
        registerDocumentPath: state.registerDocumentPath,
        taxCardDocumentPath: state.taxCardDocumentPath,
      ),
    );

    if (isClosed) return;
    await res.fold(
      (f) async => emit(
        state.copyWith(
          submitting: false,
          error: f.message,
          serverErrors: f is ServerFailure ? f.errors : null,
        ),
      ),
      (_) async {
        emit(state.copyWith(submitting: false, submitted: true));
        // نعيد الجلب عشان الحالة تبقى PENDING والمرفقات تتعلّم كموجودة.
        await load();
      },
    );
  }

  static String _fmtDate(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-'
      '${d.month.toString().padLeft(2, '0')}-'
      '${d.day.toString().padLeft(2, '0')}';
}
