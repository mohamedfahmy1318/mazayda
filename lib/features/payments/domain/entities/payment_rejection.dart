/// أكواد رفض السيرفر (422) في مسار الدفع — `App\Exceptions\PaymentException`.
///
/// الرد بيبقى `{"message": "...", "code": "already_bought_book"}` (BE-16).
/// **الاعتماد على `code` مش على النص** — النص مترجم وبيتغيّر.
///
/// وبعض أسباب الرفض دي **مش أعطال**: معناها إن الخطوة متعمّلة بالفعل
/// والمفروض نكمّل للي بعدها بدل ما نوقف المستخدم.
enum PaymentRejectionCode {
  /// اشترى دفتر الشروط بالفعل → كمّل للتسجيل.
  alreadyBoughtBook,

  /// دفتر الشروط مجاني → كمّل للتسجيل.
  bookFree,

  /// مسجّل بالفعل → يقدر يزايد.
  alreadyRegistered,

  /// لازم يشتري دفتر الشروط الأول → ارجع لخطوة الدفتر.
  mustPurchaseBook,

  /// غير مؤهّل → وجّه للتوثيق.
  notEligible,

  /// سجل تجاري مطلوب → وجّه للسجل التجاري.
  commerceRegisterRequired,

  /// مفيش مستحقات.
  nothingDue,

  /// مش الفائز.
  notWinner,

  /// الدفع النهائي تمّ خلاص.
  finalAlreadyPaid,

  /// البوّابة نفسها فشلت — قابل لإعادة المحاولة.
  gatewayError,

  /// رفض من غير كود، أو كود جديد مش معروف للإصدار ده.
  unknown,
}

extension PaymentRejectionCodeX on PaymentRejectionCode {
  static PaymentRejectionCode fromApi(String? v) => switch (v) {
    'already_bought_book' => PaymentRejectionCode.alreadyBoughtBook,
    'book_free' => PaymentRejectionCode.bookFree,
    'already_registered' => PaymentRejectionCode.alreadyRegistered,
    'must_purchase_book' => PaymentRejectionCode.mustPurchaseBook,
    'not_eligible' => PaymentRejectionCode.notEligible,
    'commerce_register_required' =>
      PaymentRejectionCode.commerceRegisterRequired,
    'nothing_due' => PaymentRejectionCode.nothingDue,
    'not_winner' => PaymentRejectionCode.notWinner,
    'final_already_paid' => PaymentRejectionCode.finalAlreadyPaid,
    'gateway_error' => PaymentRejectionCode.gatewayError,
    _ => PaymentRejectionCode.unknown,
  };
}

/// تصنيف رفض السيرفر (422) في مسار الدفع.
///
/// المصدر الأول والأخير هو `code`. المطابقة النصية اللي تحت بقيت **شبكة
/// أمان** لأي رد قديم/مكاش يرجّع رسالة من غير كود — بالثلاث لغات عشان ما
/// نعتمدش على ترويسة `Accept-Language`.
class PaymentRejection {
  PaymentRejection._();

  /// `payments.already_bought_book` + `payments.book_free`
  ///
  /// المصطلح العربي اتغيّر من «كراسة الشروط» لـ«دفتر الشروط» (تعديل العميل
  /// رقم 20)، فالصيغتين موجودتين هنا: القديمة لحد ما الباك ينزّل التغيير،
  /// والجديدة بعده. الشبكة دي fallback أصلًا — الـ `code` هو المرجع.
  static const _bookStepSatisfied = <String>{
    'لقد اشتريت دفتر الشروط بالفعل.',
    'لقد اشتريت كراسة الشروط بالفعل.',
    'Vous avez déjà acheté le cahier des charges.',
    'You have already bought the condition book.',
    'دفتر الشروط متاح مجاناً لهذه المزايدة.',
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

  static String _norm(String? m) => (m ?? '').trim();

  /// خطوة شراء دفتر الشروط متحقّقة بالفعل → نكمّل للتسجيل.
  static bool isBookStepSatisfied(String? message, {String? code}) {
    final parsed = PaymentRejectionCodeX.fromApi(code);
    if (parsed != PaymentRejectionCode.unknown) {
      return parsed == PaymentRejectionCode.alreadyBoughtBook ||
          parsed == PaymentRejectionCode.bookFree;
    }
    return _bookStepSatisfied.contains(_norm(message));
  }

  /// التسجيل متحقّق بالفعل → المستخدم يقدر يزايد.
  static bool isRegistrationSatisfied(String? message, {String? code}) {
    final parsed = PaymentRejectionCodeX.fromApi(code);
    if (parsed != PaymentRejectionCode.unknown) {
      return parsed == PaymentRejectionCode.alreadyRegistered;
    }
    return _registrationSatisfied.contains(_norm(message));
  }

  /// الدفع النهائي متحقّق بالفعل (أو مفيش مستحقات) → مفيش حاجة تتدفع.
  ///
  /// مافيش fallback نصي هنا عن قصد: الحالتين دول جداد على الـ API (BE-16)
  /// فمستحيل يوصلوا من غير كود.
  static bool isFinalPaymentSettled(String? message, {String? code}) {
    final parsed = PaymentRejectionCodeX.fromApi(code);
    return parsed == PaymentRejectionCode.finalAlreadyPaid ||
        parsed == PaymentRejectionCode.nothingDue;
  }
}
