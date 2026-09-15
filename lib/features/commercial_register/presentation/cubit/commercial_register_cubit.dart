import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/arabic_numerals.dart';
import '../../domain/entities/commercial_register.dart';
import '../../domain/usecases/commercial_register_usecases.dart';
import '../cr_constants.dart';

part 'commercial_register_cubit.freezed.dart';

/// أخطاء التحقق المحلية — قواعد SubmitCommercialRegisterRequest + شكل
/// المعرّفات الجزائرية (شوف [CrConstants]).
enum CrFieldError {
  required,
  tooShort,
  tooLong,
  incomplete,
  digitsOnly,
  taxLength,
  futureDate,
  fileTooLarge,
}

/// حقول النموذج — نستخدمها لتتبّع الحقل اللي المستخدم خلّص منه (blur)
/// عشان نعرض خطأه من غير ما نزعّقله وهو لسه بيكتب.
enum CrFormField { companyName, registerNumber, taxNumber, activityType, startDate }

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

    /// حجم كل مرفق (بايت) — بنقيسه مرة واحدة وقت الاختيار بدل ما نقرا من
    /// الديسك في كل rebuild (يعني مع كل حرف بيتكتب في النموذج).
    int? registerDocumentBytes,
    int? taxCardDocumentBytes,

    /// بعد أول محاولة إرسال بنعرض أخطاء كل الحقول.
    @Default(false) bool showErrors,

    /// الحقول اللي المستخدم دخلها وخرج منها — بنعرض خطأها لوحدها قبل الإرسال.
    @Default(<CrFormField>{}) Set<CrFormField> touched,
  }) = _CommercialRegisterState;

  bool get isApproved =>
      register?.status == CommercialRegisterStatus.approved;

  /// السيرفر قافل الإرسال (سجل معتمد).
  bool get isLocked => register != null && !register!.canSubmit;

  CrFieldError? get companyNameError =>
      _text(companyName, CrConstants.companyNameMax);

  CrFieldError? get activityTypeError =>
      _text(activityType, CrConstants.activityTypeMax);

  /// رقم السجل فيه حروف وشرطات (16/00-1234567 B 19) — فبنتأكد إنه مش ناقص
  /// بدل ما نفرض صيغة واحدة تقفل على أشكال قديمة.
  CrFieldError? get registerNumberError {
    final v = toLatinDigits(registerNumber.trim());
    if (v.isEmpty) return CrFieldError.required;
    if (v.length > CrConstants.registerNumberMax) return CrFieldError.tooLong;
    final digits = v.replaceAll(RegExp(r'[^0-9]'), '').length;
    return digits < CrConstants.registerNumberMinDigits
        ? CrFieldError.incomplete
        : null;
  }

  /// الرقم الجبائي (NIF) أرقام فقط بطول ثابت.
  CrFieldError? get taxNumberError {
    final v = toLatinDigits(taxNumber.trim());
    if (v.isEmpty) return CrFieldError.required;
    if (!RegExp(r'^[0-9]+$').hasMatch(v)) return CrFieldError.digitsOnly;
    return v.length != CrConstants.taxNumberDigits
        ? CrFieldError.taxLength
        : null;
  }

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
    if (pathFor(type) != null) {
      final bytes = bytesFor(type) ?? 0;
      return bytes > CrConstants.maxDocKb * 1024
          ? CrFieldError.fileTooLarge
          : null;
    }
    final needed = register?.requiresUpload(type) ?? true;
    return needed ? CrFieldError.required : null;
  }

  String? pathFor(CrDocumentType type) => switch (type) {
    CrDocumentType.register => registerDocumentPath,
    CrDocumentType.taxCard => taxCardDocumentPath,
  };

  int? bytesFor(CrDocumentType type) => switch (type) {
    CrDocumentType.register => registerDocumentBytes,
    CrDocumentType.taxCard => taxCardDocumentBytes,
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

  /// خطأ الحقل النصّي/التاريخ حسب نوعه — مكان واحد تسأله الواجهة.
  CrFieldError? errorFor(CrFormField field) => switch (field) {
    CrFormField.companyName => companyNameError,
    CrFormField.registerNumber => registerNumberError,
    CrFormField.taxNumber => taxNumberError,
    CrFormField.activityType => activityTypeError,
    CrFormField.startDate => startDateError,
  };

  /// نعرض الخطأ بعد ما المستخدم يسيب الحقل، أو بعد أول محاولة إرسال.
  CrFieldError? visibleErrorFor(CrFormField field) =>
      showErrors || touched.contains(field) ? errorFor(field) : null;

  /// الحقل مكتمل وسليم — للعلامة الخضرا ولشريط التقدّم.
  bool isFieldDone(CrFormField field) => errorFor(field) == null;

  /// أول حقل ناقص — بنسكرول ليه لما الإرسال يفشل محليًا.
  CrFormField? get firstInvalidField =>
      CrFormField.values.where((f) => errorFor(f) != null).firstOrNull;

  /// خطوات النموذج = 5 حقول + مستندين.
  static const int totalSteps = 7;

  int get completedSteps =>
      CrFormField.values.where(isFieldDone).length +
      CrDocumentType.values.where((d) => documentError(d) == null).length;

  static CrFieldError? _text(String v, int max) {
    final trimmed = v.trim();
    if (trimmed.isEmpty) return CrFieldError.required;
    if (trimmed.length < CrConstants.textMin) return CrFieldError.tooShort;
    if (trimmed.length > max) return CrFieldError.tooLong;
    return null;
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

  void companyNameChanged(String v) => emit(
    state.copyWith(companyName: v, serverErrors: _without('company_name')),
  );

  void registerNumberChanged(String v) => emit(
    state.copyWith(
      registerNumber: v,
      serverErrors: _without('register_number'),
    ),
  );

  void taxNumberChanged(String v) =>
      emit(state.copyWith(taxNumber: v, serverErrors: _without('tax_number')));

  void activityTypeChanged(String v) => emit(
    state.copyWith(activityType: v, serverErrors: _without('activity_type')),
  );

  void startDateChanged(DateTime d) => emit(
    state.copyWith(
      startDate: _fmtDate(d),
      // التاريخ من الـ picker — يعتبر «اتلمس» بمجرد الاختيار.
      touched: {...state.touched, CrFormField.startDate},
      serverErrors: _without('start_date'),
    ),
  );

  /// المستخدم سـاب الحقل — من هنا ونازل نعرض خطأه لو فيه.
  void fieldBlurred(CrFormField field) {
    if (state.touched.contains(field)) return;
    emit(state.copyWith(touched: {...state.touched, field}));
  }

  void documentPicked(CrDocumentType type, String path) {
    final bytes = _sizeOf(path);
    emit(
      switch (type) {
        CrDocumentType.register => state.copyWith(
          registerDocumentPath: path,
          registerDocumentBytes: bytes,
          serverErrors: _without('register_document'),
        ),
        CrDocumentType.taxCard => state.copyWith(
          taxCardDocumentPath: path,
          taxCardDocumentBytes: bytes,
          serverErrors: _without('tax_card_document'),
        ),
      },
    );
  }

  /// لو قراءة الحجم فشلت بنعتبره صفر — السيرفر هو خط الدفاع الأخير للحجم.
  static int _sizeOf(String path) {
    try {
      return File(path).lengthSync();
    } catch (_) {
      return 0;
    }
  }

  /// خطأ السيرفر بتاع حقل بيروح أول ما المستخدم يعدّله — رسالة قديمة على
  /// قيمة اتغيّرت بتبقى مضلّلة.
  Map<String, List<String>>? _without(String key) {
    final errors = state.serverErrors;
    if (errors == null || !errors.containsKey(key)) return errors;
    final rest = {...errors}..remove(key);
    return rest.isEmpty ? null : rest;
  }

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
        // رقمَي السجل والتعريف الجبائي معرّفات — لو المستخدم كتبهم بأرقام
        // عربية بالكيبورد العربي، بيتبعتوا لاتيني. الحقل نفسه بيفضل يعرض
        // اللي كتبه. اسم الشركة/النشاط نص حر فبيتساب زي ما هو.
        registerNumber: toLatinDigits(state.registerNumber.trim()),
        taxNumber: toLatinDigits(state.taxNumber.trim()),
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
