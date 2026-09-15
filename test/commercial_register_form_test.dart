import 'package:flutter_test/flutter_test.dart';
import 'package:mazayada/features/commercial_register/domain/entities/commercial_register.dart';
import 'package:mazayada/features/commercial_register/presentation/cr_constants.dart';
import 'package:mazayada/features/commercial_register/presentation/cubit/commercial_register_cubit.dart';

/// نموذج مكتمل نبني عليه حالات الفشل حالة حالة.
CommercialRegisterState _valid({
  String companyName = 'ذ.م.م مزايدة للتجارة',
  String registerNumber = '16/00-1234567 B 19',
  String taxNumber = '000116001234567',
  String activityType = 'تجارة السيارات',
  String? startDate = '2022-01-15',
}) => CommercialRegisterState(
  loading: false,
  companyName: companyName,
  registerNumber: registerNumber,
  taxNumber: taxNumber,
  activityType: activityType,
  startDate: startDate,
  registerDocumentPath: null,
  taxCardDocumentPath: null,
  register: const CommercialRegister(
    status: CommercialRegisterStatus.pending,
    hasRegisterDocument: true,
    hasTaxCardDocument: true,
  ),
);

void main() {
  group('تحقق نموذج السجل التجاري', () {
    test('النموذج المكتمل صالح للإرسال', () {
      final s = _valid();
      expect(s.isValid, isTrue);
      expect(s.canSubmit, isTrue);
      expect(s.completedSteps, CommercialRegisterState.totalSteps);
      expect(s.firstInvalidField, isNull);
    });

    test('اسم الشركة: مطلوب / قصير جدًا', () {
      expect(
        _valid(companyName: '   ').companyNameError,
        CrFieldError.required,
      );
      expect(_valid(companyName: 'م').companyNameError, CrFieldError.tooShort);
    });

    test('رقم السجل يقبل الأرقام العربية ويرفض الناقص', () {
      expect(
        _valid(registerNumber: '١٦/٠٠-١٢٣٤٥٦٧ B ١٩').registerNumberError,
        isNull,
      );
      expect(
        _valid(registerNumber: 'B-12').registerNumberError,
        CrFieldError.incomplete,
      );
      expect(_valid(registerNumber: '').registerNumberError,
          CrFieldError.required);
    });

    test('الرقم الجبائي: 15 رقمًا، عربي أو لاتيني', () {
      expect(_valid(taxNumber: '٠٠٠١١٦٠٠١٢٣٤٥٦٧').taxNumberError, isNull);
      expect(
        _valid(taxNumber: '000116').taxNumberError,
        CrFieldError.taxLength,
      );
      expect(
        _valid(taxNumber: '00011600123456A').taxNumberError,
        CrFieldError.digitsOnly,
      );
      expect(
        CrConstants.taxNumberDigits,
        '000116001234567'.length,
      );
    });

    test('تاريخ الإصدار لا يكون في المستقبل', () {
      final tomorrow = DateTime.now().add(const Duration(days: 1));
      final asText =
          '${tomorrow.year}-${tomorrow.month.toString().padLeft(2, '0')}-'
          '${tomorrow.day.toString().padLeft(2, '0')}';
      expect(_valid(startDate: asText).startDateError, CrFieldError.futureDate);
      expect(_valid(startDate: null).startDateError, CrFieldError.required);
    });

    test('المستند مطلوب فقط لو مفيش نسخة محفوظة', () {
      const noDocs = CommercialRegisterState(
        register: CommercialRegister(status: CommercialRegisterStatus.rejected),
      );
      expect(
        noDocs.documentError(CrDocumentType.register),
        CrFieldError.required,
      );
      expect(_valid().documentError(CrDocumentType.register), isNull);
    });

    test('الخطأ يظهر بعد لمس الحقل أو بعد محاولة إرسال', () {
      final pristine = _valid(companyName: '');
      expect(pristine.visibleErrorFor(CrFormField.companyName), isNull);

      final touched = pristine.copyWith(touched: {CrFormField.companyName});
      expect(
        touched.visibleErrorFor(CrFormField.companyName),
        CrFieldError.required,
      );

      final submitted = pristine.copyWith(showErrors: true);
      expect(
        submitted.visibleErrorFor(CrFormField.companyName),
        CrFieldError.required,
      );
      expect(submitted.firstInvalidField, CrFormField.companyName);
    });

    test('عدّاد الخطوات بيقلّ مع كل حقل ناقص', () {
      final s = _valid(companyName: '', taxNumber: '12');
      expect(s.completedSteps, CommercialRegisterState.totalSteps - 2);
      expect(s.isValid, isFalse);
    });

    test('السجل المعتمد مقفول ضد الإرسال', () {
      final approved = _valid().copyWith(
        register: const CommercialRegister(
          status: CommercialRegisterStatus.approved,
          canSubmit: false,
          hasRegisterDocument: true,
          hasTaxCardDocument: true,
        ),
      );
      expect(approved.isLocked, isTrue);
      expect(approved.canSubmit, isFalse);
    });
  });
}
