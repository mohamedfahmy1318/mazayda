// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'مزايدة';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navMyAuctions => 'مزايداتي';

  @override
  String get navPayments => 'المدفوعات';

  @override
  String get navProfile => 'حسابي';

  @override
  String get splashTagline => 'المنصة الوطنية للمزادات الحكومية';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get loginButton => 'دخول';

  @override
  String get register => 'إنشاء حساب';

  @override
  String get noAccountRegister => 'ليس لديك حساب؟ إنشاء حساب';

  @override
  String get ninOrEmail => 'رقم التعريف أو البريد';

  @override
  String get password => 'كلمة المرور';

  @override
  String get confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get nin => 'رقم التعريف الوطني (NIN)';

  @override
  String get ninHint => '18 رقم';

  @override
  String get firstName => 'الاسم';

  @override
  String get lastName => 'اللقب';

  @override
  String get phone => 'رقم الهاتف';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get nextVerify => 'التالي — التحقق';

  @override
  String get verifyEmailTitle => 'تأكيد البريد الإلكتروني';

  @override
  String get otpHint => 'أدخل الرمز المكوّن من 6 أرقام المرسل إلى بريدك';

  @override
  String get confirm => 'تأكيد';

  @override
  String get resendCode => 'إعادة إرسال الرمز';

  @override
  String resendIn(int seconds) {
    return 'إعادة الإرسال خلال $seconds ثانية';
  }

  @override
  String get activeAuctions => 'المزادات النشطة';

  @override
  String get noAuctions => 'لا توجد مزادات حاليًا';

  @override
  String get currentPrice => 'السعر الحالي';

  @override
  String get openingPrice => 'السعر الافتتاحي';

  @override
  String get highestBid => 'أعلى مزايدة';

  @override
  String get depositRequired => 'التأمين المطلوب';

  @override
  String bidders(int count) {
    return '$count مزايد';
  }

  @override
  String get live => 'مباشر';

  @override
  String get comingSoon => 'قريبًا';

  @override
  String get description => 'الوصف';

  @override
  String get registerAndPay => 'تسجيل ودفع';

  @override
  String get bid => 'مزايدة';

  @override
  String get liveBidding => 'المزاد المباشر';

  @override
  String get bidHistory => 'سجل المزايدات';

  @override
  String get noBidsYet => 'لا توجد مزايدات بعد';

  @override
  String get youAreHighest => 'أنت صاحب أعلى مزايدة';

  @override
  String placeBidAmount(String amount) {
    return 'زايد بـ $amount';
  }

  @override
  String get kycTitle => 'التحقق من الهوية (KYC)';

  @override
  String get kycWarning => 'أكمل النموذج خلال 30 يومًا وإلا سيُعلَّق الحساب';

  @override
  String get requiredDocuments => 'المستندات المطلوبة';

  @override
  String get personalData => 'البيانات الشخصية';

  @override
  String get finishVerification => 'إنهاء التحقق';

  @override
  String get uploadDocsFirst => 'ارفع المستندات الثلاثة المطلوبة أولًا';

  @override
  String get myAuctionsActive => 'نشطة';

  @override
  String get myAuctionsWon => 'رابحة';

  @override
  String get myAuctionsLost => 'خاسرة';

  @override
  String get myAuctionsUpcoming => 'قادمة';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get markAllRead => 'تعليم الكل';

  @override
  String get noNotifications => 'لا توجد إشعارات';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get verifiedKyc => 'موثّق — KYC مكتمل';

  @override
  String get changePassword => 'تغيير كلمة المرور';

  @override
  String get language => 'اللغة';

  @override
  String get privacy => 'الخصوصية';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get save => 'حفظ';

  @override
  String get edit => 'تعديل';

  @override
  String get profession => 'المهنة';

  @override
  String get address => 'العنوان';

  @override
  String get postalCode => 'الرمز البريدي';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'الفرنسية';

  @override
  String get languageEnglish => 'الإنجليزية';

  @override
  String get chooseLanguage => 'اختر اللغة';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get errorGeneric => 'حدث خطأ، حاول مجددًا';

  @override
  String get errorNetwork => 'تحقق من اتصالك بالإنترنت';

  @override
  String get paymentSuccess => 'تم الدفع بنجاح';

  @override
  String get paymentCancelled => 'تم إلغاء الدفع';

  @override
  String get securePayment => 'الدفع الآمن';

  @override
  String get valRequired => 'هذا الحقل مطلوب';

  @override
  String get valEmailInvalid => 'بريد إلكتروني غير صالح';

  @override
  String get valPasswordShort => 'كلمة المرور 12 حرفًا على الأقل';

  @override
  String get valPasswordMismatch => 'كلمتا المرور غير متطابقتين';

  @override
  String get valNinInvalid => 'رقم التعريف يجب أن يكون 18 رقمًا';

  @override
  String get valPhoneInvalid => 'رقم هاتف غير صالح (10 أرقام تبدأ بـ 0)';

  @override
  String get valNameShort => 'الاسم قصير جدًا';

  @override
  String get offlineBanner => 'لا يوجد اتصال بالإنترنت';

  @override
  String get backOnline => 'تم استعادة الاتصال';

  @override
  String get appealsTitle => 'الاعتراضات';

  @override
  String get appealsEmpty => 'لا توجد اعتراضات';

  @override
  String get appealSubmitted => 'تم إرسال اعتراضك';

  @override
  String get newAppeal => 'تقديم اعتراض جديد';

  @override
  String get newAppealTitle => 'اعتراض جديد';

  @override
  String get appealSubject => 'الموضوع';

  @override
  String get appealSubjectHint => 'مثال: اعتراض على نتيجة المزاد';

  @override
  String get appealReason => 'السبب التفصيلي';

  @override
  String get appealReasonHint => 'اشرح سبب الاعتراض بالتفصيل...';

  @override
  String get submitAppeal => 'إرسال الاعتراض';

  @override
  String get appealStatusPending => 'قيد المراجعة';

  @override
  String get appealStatusAnswered => 'تمت الإجابة';

  @override
  String get appealStatusRejected => 'مرفوض';
}
