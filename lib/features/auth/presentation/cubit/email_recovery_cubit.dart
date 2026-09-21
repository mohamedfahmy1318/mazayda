import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/email_recovery.dart';
import '../../domain/usecases/email_recovery_usecases.dart';
import '../formz/auth_inputs.dart';

part 'email_recovery_cubit.freezed.dart';

/// خطوات شاشة استرجاع البريد الإلكتروني المفقود.
enum EmailRecoveryStep {
  /// إدخال رقم التعريف والبيانات الشخصية + البريد الجديد.
  form,

  /// الطلب اتبعت وبيستنى مراجعة الجهة المختصة.
  submitted,
}

@freezed
abstract class EmailRecoveryFormState with _$EmailRecoveryFormState {
  const EmailRecoveryFormState._();

  const factory EmailRecoveryFormState({
    @Default(EmailRecoveryStep.form) EmailRecoveryStep step,
    @Default(NinInput.pure()) NinInput nin,
    @Default(BirthDateInput.pure()) BirthDateInput birthDate,
    @Default(PhoneInput.pure()) PhoneInput phone,
    @Default(EmailInput.pure()) EmailInput newEmail,

    /// مسار صورة السيلفي مع بطاقة الهوية على الجهاز.
    String? selfiePath,

    @Default(false) bool isSubmitting,

    /// نتيجة الطلب (بعد الإرسال أو من متابعة الحالة).
    EmailRecoveryRequest? request,

    String? errorMessage,
    Map<String, List<String>>? serverErrors,
  }) = _EmailRecoveryFormState;

  /// الصورة شرط أساسي — الجهة المختصة بتطابق الوش بالبطاقة، فمن غيرها
  /// الطلب مالوش معنى.
  bool get hasSelfie => (selfiePath ?? '').isNotEmpty;

  /// كل الحقول صالحة والصورة مرفوعة — الزرار بيفضل مطفي غير كده.
  bool get canSubmit =>
      !isSubmitting &&
      hasSelfie &&
      Formz.validate([nin, birthDate, phone, newEmail]);
}

/// استرجاع بريد إلكتروني مفقود — تعديل العميل رقم 1.
///
/// المسار **غير مصادَق** بطبيعته: المواطن فقد بريده فمش قادر يسجّل دخول ولا
/// يستقبل رمز تحقق. إثبات الهوية بيتم بالبيانات الشخصية + صورة سيلفي مع
/// بطاقة الهوية، والاعتماد بيتم يدويًا من الجهة المختصة (تعديل رقم 2).
@injectable
class EmailRecoveryCubit extends Cubit<EmailRecoveryFormState> {
  final SubmitEmailRecovery _submit;
  final GetEmailRecoveryStatus _getStatus;

  EmailRecoveryCubit(this._submit, this._getStatus)
    : super(const EmailRecoveryFormState());

  void ninChanged(String v) => emit(
    state.copyWith(
      nin: NinInput.dirty(v),
      serverErrors: null,
      errorMessage: null,
    ),
  );

  void birthDateChanged(String v) =>
      emit(state.copyWith(birthDate: BirthDateInput.dirty(v)));

  void phoneChanged(String v) =>
      emit(state.copyWith(phone: PhoneInput.dirty(v)));

  void newEmailChanged(String v) =>
      emit(state.copyWith(newEmail: EmailInput.dirty(v)));

  void selfiePicked(String path) =>
      emit(state.copyWith(selfiePath: path, errorMessage: null));

  /// يرجّع للفورم من شاشة «تم الإرسال» — للطلب المرفوض اللي محتاج تصحيح.
  void backToForm() => emit(
    state.copyWith(
      step: EmailRecoveryStep.form,
      request: null,
      errorMessage: null,
      serverErrors: null,
    ),
  );

  Future<void> submit() async {
    if (!state.canSubmit) return;
    emit(
      state.copyWith(
        isSubmitting: true,
        errorMessage: null,
        serverErrors: null,
      ),
    );

    final res = await _submit(
      SubmitEmailRecoveryParams(
        nin: state.nin.value,
        birthDate: state.birthDate.value,
        phone: state.phone.value,
        newEmail: state.newEmail.value,
        selfiePath: state.selfiePath!,
      ),
    );
    if (isClosed) return;

    res.fold(
      (f) => emit(
        state.copyWith(
          isSubmitting: false,
          errorMessage: f.message,
          serverErrors: f is ServerFailure ? f.errors : null,
        ),
      ),
      (request) => emit(
        state.copyWith(
          isSubmitting: false,
          step: EmailRecoveryStep.submitted,
          request: request,
        ),
      ),
    );
  }

  /// متابعة آخر طلب لنفس رقم التعريف — بتتنادى من زرار «تحديث الحالة».
  Future<void> refreshStatus() async {
    final nin = state.nin.value;
    if (nin.isEmpty) return;
    emit(state.copyWith(isSubmitting: true, errorMessage: null));

    final res = await _getStatus(nin);
    if (isClosed) return;

    res.fold(
      (f) =>
          emit(state.copyWith(isSubmitting: false, errorMessage: f.message)),
      (request) => emit(
        state.copyWith(
          isSubmitting: false,
          request: request,
          // مفيش طلب سابق → نرجّع المواطن للفورم بدل شاشة انتظار فاضية.
          step: request == null
              ? EmailRecoveryStep.form
              : EmailRecoveryStep.submitted,
        ),
      ),
    );
  }
}
