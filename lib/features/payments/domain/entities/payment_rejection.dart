/// تصنيف رفض السيرفر (422) في مسار الدفع.
///
/// الباك بيرفض بـ `RuntimeException` برسالة نصية **من غير كود يتقري**
/// (`{"message": "..."}` بس). وبعض أسباب الرفض دي **مش أعطال** — معناها إن
/// الخطوة متعمّلة بالفعل والمفروض نكمّل للي بعدها بدل ما نوقف المستخدم.
///
/// أوضح مثال: مستخدم يشتري كراسة الشروط بنجاح، وبعدين التطبيق ما يعرفش إنه
/// اشتراها (لأن `has_book_access` بيرجع false للموبايل — طلب BE-15) فيحاول
/// يشتري تاني ويتقفل في حلقة على «لقد اشتريت كراسة الشروط بالفعل».
///
/// بنطابق نصوص `lang/{ar,fr,en}/payments.php` حرفيًا وبالثلاث لغات — مش
/// بالعربي بس — عشان ما نعتمدش على ترويسة `Accept-Language`.
///
/// ⚠️ ده حلّ وسط لحد ما الباك يرجّع كود خطأ يتقري (طلب BE-16). لو النص
/// اتغيّر في الباك، المطابقة بتفشل بأمان: المستخدم بيشوف رسالة السيرفر
/// زي ما هي — نفس السلوك الحالي، من غير أي ادّعاء غلط.
class PaymentRejection {
  PaymentRejection._();

  /// `payments.already_bought_book` + `payments.book_free`
  /// الاتنين معناهم إن الوصول للكراسة **متحقّق** فعلًا.
  static const _bookStepSatisfied = <String>{
    'لقد اشتريت كراسة الشروط بالفعل.',
    'Vous avez déjà acheté le cahier des charges.',
    'You have already bought the condition book.',
    'كراسة الشروط متاحة مجاناً لهذه المزايدة.',
    'Le cahier des charges est gratuit pour cette enchère.',
    'The condition book is free for this auction.',
  };

  /// `payments.already_registered` — التسجيل مكتمل، يقدر يزايد.
  static const _registrationSatisfied = <String>{
    'أنت مسجّل بالفعل في هذه المزايدة.',
    'Vous êtes déjà inscrit à cette enchère.',
    'You are already registered for this auction.',
  };

  /// أكواد الباك (BE-16) — المصدر المفضّل لما يبقى متاح.
  static const _bookCodes = <String>{'already_bought_book', 'book_free'};
  static const _registrationCodes = <String>{'already_registered'};

  static String _norm(String? m) => (m ?? '').trim();

  /// خطوة شراء الكراسة متحقّقة بالفعل → نكمّل للتسجيل.
  ///
  /// بنفضّل [code] لو الباك بعته (BE-16) وبنرجع لمطابقة النص لو مبعتوش.
  /// أول ما BE-16 ينزل، المطابقة النصية بتبقى مجرد شبكة أمان.
  static bool isBookStepSatisfied(String? message, {String? code}) =>
      code != null
      ? _bookCodes.contains(code)
      : _bookStepSatisfied.contains(_norm(message));

  /// التسجيل متحقّق بالفعل → المستخدم يقدر يزايد.
  static bool isRegistrationSatisfied(String? message, {String? code}) =>
      code != null
      ? _registrationCodes.contains(code)
      : _registrationSatisfied.contains(_norm(message));
}
