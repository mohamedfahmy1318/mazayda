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
  String resendInTimer(String time) {
    return 'إعادة الإرسال خلال $time';
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
  String get active => 'نشط';

  @override
  String get ended => 'منتهٍ';

  @override
  String get cancelled => 'ملغى';

  @override
  String get description => 'الوصف';

  @override
  String get auctionsTitle => 'المزادات';

  @override
  String get searchAuctionHint => 'ابحث عن مزاد...';

  @override
  String get filter => 'تصفية';

  @override
  String get filterAll => 'الكل';

  @override
  String get filterStatusActive => 'نشط';

  @override
  String get filterStatusUpcoming => 'قادم';

  @override
  String get filterStatusExtended => 'مُمدّد';

  @override
  String get filterStatusClosed => 'مُغلق';

  @override
  String get auctionTypeSale => 'بيع';

  @override
  String get auctionTypeLease => 'إيجار';

  @override
  String auctionsCount(String count) {
    return '$count مزاد';
  }

  @override
  String get clearAll => 'مسح الكل';

  @override
  String get noMoreResults => '— لا مزيد من النتائج —';

  @override
  String get noMatchingAuctions => 'لا توجد مزادات مطابقة';

  @override
  String get tryAdjustingFilters => 'جرّب تعديل البحث أو الفلاتر';

  @override
  String get resetFilters => 'إعادة تعيين الفلاتر';

  @override
  String get filterAuctions => 'تصفية المزادات';

  @override
  String get type => 'النوع';

  @override
  String get wilaya => 'الولاية';

  @override
  String get clearSelection => 'إلغاء التحديد';

  @override
  String get searchWilayaHint => 'ابحث عن ولاية...';

  @override
  String get wilayasLoadError => 'تعذّر تحميل الولايات';

  @override
  String get noWilayaMatch => 'لا توجد ولاية بهذا الاسم';

  @override
  String get reset => 'إعادة تعيين';

  @override
  String get showResults => 'عرض النتائج';

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
  String get currentHighestBid => 'أعلى مزايدة حالية';

  @override
  String get currencyDzd => 'دج';

  @override
  String bidsCount(int count) {
    return '$count مزايدة';
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
  String get kycSubmitted => 'تم إرسال طلبك للمراجعة';

  @override
  String get kycDocIdFront => 'بطاقة الهوية (الوجه)';

  @override
  String get kycDocIdBack => 'بطاقة الهوية (الظهر)';

  @override
  String get kycDocSelfie => 'سيلفي مع البطاقة';

  @override
  String get kycDocBiometric => 'الصورة البيومترية';

  @override
  String get kycStatusPending => 'بانتظار الإكمال';

  @override
  String get kycStatusUnderReview => 'قيد المراجعة';

  @override
  String get kycStatusVerified => 'موثّق';

  @override
  String get kycStatusRejected => 'مرفوض';

  @override
  String kycStatusLabel(String status) {
    return 'الحالة: $status';
  }

  @override
  String get firstNameFr => 'الاسم بالفرنسية';

  @override
  String get lastNameFr => 'اللقب بالفرنسية';

  @override
  String get fatherName => 'اسم الأب';

  @override
  String get motherName => 'اسم الأم';

  @override
  String get motherSurname => 'لقب الأم';

  @override
  String get expectedIncome => 'الدخل الشهري المتوقع';

  @override
  String get idNumber => 'رقم بطاقة الهوية';

  @override
  String get commune => 'البلدية';

  @override
  String get myAuctionsActive => 'نشطة';

  @override
  String get myAuctionsWon => 'رابحة';

  @override
  String get myAuctionsLost => 'خاسرة';

  @override
  String get myAuctionsUpcoming => 'قادمة';

  @override
  String get myAuctionsStatusWinning => 'أنت الأعلى';

  @override
  String get myAuctionsStatusOutbid => 'تمت المزايدة عليك';

  @override
  String get myAuctionsStatusAwaitingPayment => 'بانتظار الدفع';

  @override
  String get myAuctionsStatusCompleted => 'مكتمل';

  @override
  String get myAuctionsStatusRefund => 'تم استرداد التأمين';

  @override
  String get myAuctionsStatusUpcoming => 'لم يبدأ بعد';

  @override
  String get myAuctionsPriceCurrentBid => 'مزايدتك الحالية';

  @override
  String get myAuctionsPriceKnockdown => 'سعر الرسو';

  @override
  String get myAuctionsPriceFinal => 'السعر النهائي';

  @override
  String get myAuctionsEmptyActive => 'لا توجد مزادات نشطة';

  @override
  String get myAuctionsEmptyWon => 'لم تربح أي مزاد بعد';

  @override
  String get myAuctionsEmptyLost => 'لا توجد مزادات خاسرة';

  @override
  String get myAuctionsEmptyUpcoming => 'لا توجد مزادات قادمة';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get markAllRead => 'تعليم الكل';

  @override
  String get noNotifications => 'لا توجد إشعارات';

  @override
  String get timeNow => 'الآن';

  @override
  String timeMinutesAgo(int minutes) {
    return 'منذ $minutes دقيقة';
  }

  @override
  String timeHoursAgo(int hours) {
    return 'منذ $hours ساعة';
  }

  @override
  String timeDaysAgo(int days) {
    return 'منذ $days يوم';
  }

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get verifiedKyc => 'موثّق — KYC مكتمل';

  @override
  String get kycBadgeRejected => 'مرفوض — أعد التحقق';

  @override
  String get kycBadgeComplete => 'أكمل التحقق من الهوية';

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
