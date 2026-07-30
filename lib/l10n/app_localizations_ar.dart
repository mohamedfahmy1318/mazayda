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
  String get birthDate => 'تاريخ الميلاد';

  @override
  String get selectBirthDate => 'اختر تاريخ الميلاد';

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
  String get myAuctionsStatusAwaitingPayment => 'بانتظار الدفع';

  @override
  String get myAuctionsStatusCompleted => 'مكتمل';

  @override
  String get myAuctionsStatusRefund => 'تم استرداد التأمين';

  @override
  String get myAuctionsStatusUpcoming => 'لم يبدأ بعد';

  @override
  String get myAuctionsStatusLive => 'جارٍ الآن';

  @override
  String get myAuctionsStatusEnded => 'انتهى — بانتظار النتيجة';

  @override
  String get myAuctionsStatusParticipating => 'مشارِك';

  @override
  String get myAuctionsStatusWinning => 'أنت الأعلى';

  @override
  String get myAuctionsStatusOutbid => 'تم تجاوزك';

  @override
  String get myAuctionsStatusWon => 'فزت بالمزاد';

  @override
  String get myAuctionsStatusLost => 'لم تفز';

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
  String get paymentAlreadyDone =>
      'أنت مسجّل بالفعل في هذا المزاد — يمكنك المزايدة';

  @override
  String get paymentNotConfirmed =>
      'لم يصلنا تأكيد الدفع بعد. إن كنت قد دفعت، انتظر قليلًا ثم أعد المحاولة.';

  @override
  String get paymentBookNotConfirmed =>
      'لم يصلنا تأكيد شراء كراسة الشروط بعد. إن كنت قد دفعت، انتظر قليلًا ثم أعد المحاولة.';

  @override
  String get securePayment => 'الدفع الآمن';

  @override
  String get paymentPageFailed => 'تعذّر فتح صفحة الدفع';

  @override
  String get valRequired => 'هذا الحقل مطلوب';

  @override
  String get valEmailInvalid => 'بريد إلكتروني غير صالح';

  @override
  String get valPasswordShort => 'كلمة المرور 12 حرفًا على الأقل';

  @override
  String get valPasswordMixedCase => 'يجب أن تحتوي على حرف كبير وآخر صغير';

  @override
  String get valPasswordNumber => 'يجب أن تحتوي على رقم واحد على الأقل';

  @override
  String get valPasswordSymbol => 'يجب أن تحتوي على رمز واحد على الأقل';

  @override
  String get valBirthDateUnder18 => 'يجب ألا يقل عمرك عن 18 سنة';

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
  String get appealStatusApproved => 'مقبول';

  @override
  String get appealStatusRejected => 'مرفوض';

  @override
  String get appealFileFromAuction =>
      'يُقدَّم الطعن من صفحة المزاد بعد إغلاقه — افتح المزاد الذي شاركت فيه ثم اختر «تقديم طعن».';

  @override
  String get ctaLogin => 'سجّل الدخول للمشاركة';

  @override
  String get ctaParticipate => 'المشاركة في المزاد';

  @override
  String get ctaNeedsKyc => 'أكمل توثيق حسابك';

  @override
  String get ctaNeedsCommerceRegister => 'يتطلب سجلاً تجاريًا';

  @override
  String get ctaCommerceRegisterHint =>
      'هذا المزاد يتطلب سجلاً تجاريًا ساريًا قبل أي دفع. أضِفه من المنصّة ثم عُد للتطبيق.';

  @override
  String get ctaBuyBook => 'شراء كراس الشروط';

  @override
  String get ctaFinalPayment => 'إتمام الدفع النهائي';

  @override
  String get ctaFinalPaymentDone => 'تم الدفع النهائي';

  @override
  String get ctaAppeal => 'تقديم طعن';

  @override
  String get ctaTrackAppeal => 'متابعة الطعن';

  @override
  String get crTitle => 'السجل التجاري';

  @override
  String get crIntro =>
      'بعض المزادات تشترط سجلاً تجاريًا ساريًا للمشاركة. قدّم بياناتك ونسخة من السجل والبطاقة الجبائية للمراجعة.';

  @override
  String get crStatusNone => 'لم تقدّم سجلاً بعد';

  @override
  String get crStatusPending => 'قيد المراجعة';

  @override
  String get crStatusApproved => 'معتمد';

  @override
  String get crStatusRejected => 'مرفوض';

  @override
  String get crApprovedNote =>
      'سجلك معتمد — يمكنك المشاركة في المزادات التي تشترط سجلاً تجاريًا.';

  @override
  String get crPendingNote =>
      'طلبك قيد المراجعة. يمكنك تعديل البيانات وإعادة الإرسال قبل صدور القرار.';

  @override
  String get crRejectedNote => 'تم رفض الطلب. صحّح البيانات وأعد الإرسال.';

  @override
  String get crCompanyName => 'اسم الشركة';

  @override
  String get crRegisterNumber => 'رقم السجل التجاري';

  @override
  String get crTaxNumber => 'الرقم الجبائي';

  @override
  String get crActivityType => 'نوع النشاط';

  @override
  String get crStartDate => 'تاريخ إصدار السجل';

  @override
  String get crStartDateNotFuture =>
      'تاريخ الإصدار لا يمكن أن يكون في المستقبل';

  @override
  String get crFileTooLarge => 'حجم الملف يتجاوز 2 ميغابايت';

  @override
  String get crRegisterDocument => 'نسخة السجل التجاري';

  @override
  String get crTaxCardDocument => 'نسخة البطاقة الجبائية';

  @override
  String get crDocumentSelected => 'تم اختيار ملف جديد';

  @override
  String get crDocumentOnFile => 'نسخة محفوظة لدى المنصّة';

  @override
  String get crDocumentMissing => 'مطلوب';

  @override
  String get crCapture => 'تصوير';

  @override
  String get crFromGallery => 'من المعرض';

  @override
  String get crFromFiles => 'ملف PDF';

  @override
  String get crSubmit => 'إرسال للمراجعة';

  @override
  String get crResubmit => 'إعادة الإرسال';

  @override
  String get crSubmitted => 'تم إرسال السجل للمراجعة';

  @override
  String get valTooLong => 'النص أطول من المسموح';

  @override
  String get fpTitle => 'تفصيل الدفع النهائي';

  @override
  String get fpConfirmedDeposit => 'الكفالة المدفوعة (تُخصم)';

  @override
  String get fpAmountDue => 'المبلغ المستحق';

  @override
  String get fpCustomsImmediate => 'الدفعة الفورية (20% جمركي)';

  @override
  String fpDeadline(String date, int days) {
    return 'آخر أجل للدفع: $date (خلال $days يومًا)';
  }

  @override
  String get fpAlreadyPaid => 'تم الدفع النهائي بالفعل';

  @override
  String get fpPay => 'إتمام الدفع';

  @override
  String get assetClassMovable => 'منقول';

  @override
  String get assetClassRealEstate => 'عقار';

  @override
  String get assetClassCustoms => 'بضائع جمركية';

  @override
  String get conditionNew => 'جديد';

  @override
  String get conditionGood => 'جيد';

  @override
  String get conditionFair => 'مقبول';

  @override
  String get conditionPoor => 'ضعيف';

  @override
  String get conditionScrap => 'خردة';

  @override
  String get auctionTypeSale => 'بيع';

  @override
  String get auctionTypeLease => 'إيجار';

  @override
  String get adSpecifications => 'المواصفات';

  @override
  String get adPricing => 'الأسعار والرسوم';

  @override
  String get adBookPrice => 'كراسة شروط';

  @override
  String get adAssetInfo => 'بيانات الأصل';

  @override
  String get adAuctionType => 'نوع المزاد';

  @override
  String get adAssetClass => 'صنف الأصل';

  @override
  String get adCondition => 'الحالة';

  @override
  String get adUnitCount => 'عدد الوحدات';

  @override
  String get adRequiresCr => 'يتطلب سجلاً تجاريًا';

  @override
  String get adRequiresNewspaper => 'إعلان في الجريدة';

  @override
  String get adYes => 'نعم';

  @override
  String get adSchedule => 'التوقيت';

  @override
  String get adStartTime => 'بداية المزاد';

  @override
  String get adEndTime => 'نهاية المزاد';

  @override
  String get adExtensions => 'التمديدات';

  @override
  String get adLocation => 'الموقع';

  @override
  String get adCommune => 'البلدية';

  @override
  String get adMayor => 'رئيس البلدية';

  @override
  String get adOpenMap => 'فتح في الخرائط';

  @override
  String get adInspection => 'المعاينة';

  @override
  String get adInspectionState => 'حالة المعاينة';

  @override
  String get adInspectionOpen => 'متاحة الآن';

  @override
  String get adInspectionClosed => 'مغلقة';

  @override
  String get adFrom => 'من';

  @override
  String get adTo => 'إلى';

  @override
  String get adInspectionPlace => 'مكان المعاينة';

  @override
  String get adLease => 'شروط الإيجار';

  @override
  String get adLeaseDuration => 'مدة الإيجار (سنوات)';

  @override
  String get adLeaseRenewals => 'عدد التجديدات';

  @override
  String get adTerms => 'الشروط';

  @override
  String get adConditionTerms => 'شروط المشاركة';

  @override
  String get adAwardTerms => 'شروط الترسية';

  @override
  String get adResult => 'نتيجة المزاد';

  @override
  String get adWinner => 'الفائز';

  @override
  String get adNoWinner => 'لا يوجد فائز';

  @override
  String get adFinalPrice => 'السعر النهائي';

  @override
  String get adAppealWindow => 'مهلة الطعن';

  @override
  String adAppealOpen(int days) {
    return 'مفتوحة ($days يومًا)';
  }

  @override
  String get adAppealClosed => 'منتهية';

  @override
  String kycFileTooLarge(int maxKb) {
    return 'حجم الملف يتجاوز $maxKb كيلوبايت — جرّب صورة أصغر';
  }

  @override
  String get docsTitle => 'وثائقي';

  @override
  String get docsSearchHint => 'ابحث باسم المزاد أو الوثيقة';

  @override
  String get docsTotal => 'الإجمالي';

  @override
  String get docsBooks => 'كراسات';

  @override
  String get docsAwards => 'ترسيات';

  @override
  String get docsReceipts => 'إيصالات';

  @override
  String get docsFilters => 'تصفية الوثائق';

  @override
  String get docsType => 'نوع الوثيقة';

  @override
  String get docsPeriod => 'الفترة';

  @override
  String get docsSort => 'الترتيب';

  @override
  String get docsApply => 'تطبيق';

  @override
  String get docsClearFilters => 'مسح الكل';

  @override
  String get docTypeConditionBook => 'كراسة الشروط';

  @override
  String get docTypeAward => 'وثيقة الترسية';

  @override
  String get docTypeReceipt => 'إيصال دفع';

  @override
  String get docTypeDelivery => 'محضر تسليم';

  @override
  String get docsPresetAll => 'الكل';

  @override
  String get docsPresetToday => 'اليوم';

  @override
  String get docsPreset7d => 'آخر 7 أيام';

  @override
  String get docsPreset30d => 'آخر 30 يومًا';

  @override
  String get docsPresetMonth => 'هذا الشهر';

  @override
  String get docsPresetYear => 'هذه السنة';

  @override
  String get docsSortRecent => 'الأحدث';

  @override
  String get docsSortOldest => 'الأقدم';

  @override
  String get docsSortAuction => 'حسب المزاد';

  @override
  String get docsEmpty =>
      'لا توجد وثائق بعد — ستظهر هنا وثائق المزادات التي تشارك فيها';

  @override
  String get docsNoResults => 'لا توجد وثائق مطابقة للتصفية';

  @override
  String get docsVerify => 'تحقّق';

  @override
  String get docsCannotOpen => 'تعذّر فتح الملف — لا يوجد تطبيق لعرض PDF';

  @override
  String get adAwardDocument => 'وثيقة الترسية';

  @override
  String get adDownloadAward => 'تحميل وثيقة الترسية';

  @override
  String get forgotPassword => 'نسيت كلمة المرور؟';

  @override
  String get forgotPasswordTitle => 'إعادة تعيين كلمة المرور';

  @override
  String get recoverAccountTitle => 'الاسترجاع بالسؤال السرّي';

  @override
  String get recoverWithSecret => 'الاسترجاع بالسؤال السرّي';

  @override
  String get forgotPasswordHint =>
      'أدخل رقم التعريف الوطني والبريد المسجّل، وسنرسل رمزًا لإعادة التعيين.';

  @override
  String get recoverAccountHint =>
      'أدخل رقم التعريف الوطني والبريد المسجّل لعرض سؤالك السرّي.';

  @override
  String get sendCode => 'إرسال الرمز';

  @override
  String get showQuestion => 'عرض السؤال';

  @override
  String codeSentHint(String email) {
    return 'إذا كان الحساب مسجّلاً بالبريد $email، فقد أُرسل إليه رمز مكوّن من 6 أرقام.';
  }

  @override
  String get otpCode => 'رمز التحقق';

  @override
  String get secretAnswer => 'الإجابة السرّية';

  @override
  String get secretAnswerHint =>
      'الإجابة حسّاسة للحروف الكبيرة والصغيرة والمسافات — اكتبها كما سجّلتها تمامًا.';

  @override
  String get newPassword => 'كلمة المرور الجديدة';

  @override
  String get setNewPassword => 'تعيين كلمة المرور';

  @override
  String get recoveryDone =>
      'تم تغيير كلمة المرور — سجّل الدخول بكلمتك الجديدة';

  @override
  String get secretQMotherMaiden => 'ما هو الاسم العائلي لوالدتك؟';

  @override
  String get secretQFirstSchool => 'ما اسم أول مدرسة التحقت بها؟';

  @override
  String get secretQBirthCity => 'في أي مدينة وُلدت؟';

  @override
  String get secretQPetName => 'ما اسم أول حيوان أليف لديك؟';

  @override
  String get secretQFavTeacher => 'من هو معلّمك المفضّل؟';
}
