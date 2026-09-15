/// ثوابت نموذج السجل التجاري — الحدود اللي بنتحقق بيها محليًا قبل ما نبعت.
///
/// الباك بيفرض `required|string|max:255` (أو 100 للأرقام) و`before_or_equal:today`
/// للتاريخ. القواعد الزيادة هنا (طول الرقم الجبائي مثلاً) مبنية على شكل
/// المعرّفات الجزائرية الحقيقية زي ما هي في الـ Postman collection:
/// `register_number: 16/00-1234567 B 19` · `tax_number: 000116001234567`.
class CrConstants {
  CrConstants._();

  /// حدود السيرفر النصّية.
  static const int companyNameMax = 255;
  static const int activityTypeMax = 255;
  static const int registerNumberMax = 100;
  static const int taxNumberMax = 100;

  /// أقل طول معقول لاسم/نشاط — يمنع «أ» أو «-».
  static const int textMin = 2;

  /// أقل عدد أرقام في رقم السجل (16/00-1234567 B 19 فيه 11 رقم).
  static const int registerNumberMinDigits = 6;

  /// الرقم الجبائي الجزائري (NIF) = 15 رقمًا.
  /// لو السيرفر قبل يومًا ما طولًا مختلفًا، غيّر الرقم ده بس.
  static const int taxNumberDigits = 15;

  /// الحد الأقصى لحجم المرفق (KB) — مطابق لـ setting('commercial_register.doc_max_kb').
  static const int maxDocKb = 2048;
}
