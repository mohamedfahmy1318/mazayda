import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('fr'),
  ];

  /// No description provided for @appName.
  ///
  /// In ar, this message translates to:
  /// **'مزايدة'**
  String get appName;

  /// No description provided for @navHome.
  ///
  /// In ar, this message translates to:
  /// **'الرئيسية'**
  String get navHome;

  /// No description provided for @navMyAuctions.
  ///
  /// In ar, this message translates to:
  /// **'مزايداتي'**
  String get navMyAuctions;

  /// No description provided for @navPayments.
  ///
  /// In ar, this message translates to:
  /// **'المدفوعات'**
  String get navPayments;

  /// No description provided for @navProfile.
  ///
  /// In ar, this message translates to:
  /// **'حسابي'**
  String get navProfile;

  /// No description provided for @splashTagline.
  ///
  /// In ar, this message translates to:
  /// **'المنصة الوطنية للمزادات الحكومية'**
  String get splashTagline;

  /// No description provided for @login.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الدخول'**
  String get login;

  /// No description provided for @loginButton.
  ///
  /// In ar, this message translates to:
  /// **'دخول'**
  String get loginButton;

  /// No description provided for @register.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء حساب'**
  String get register;

  /// No description provided for @noAccountRegister.
  ///
  /// In ar, this message translates to:
  /// **'ليس لديك حساب؟ إنشاء حساب'**
  String get noAccountRegister;

  /// No description provided for @ninOrEmail.
  ///
  /// In ar, this message translates to:
  /// **'رقم التعريف أو البريد'**
  String get ninOrEmail;

  /// No description provided for @password.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور'**
  String get password;

  /// No description provided for @confirmPassword.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد كلمة المرور'**
  String get confirmPassword;

  /// No description provided for @nin.
  ///
  /// In ar, this message translates to:
  /// **'رقم التعريف الوطني (NIN)'**
  String get nin;

  /// No description provided for @ninHint.
  ///
  /// In ar, this message translates to:
  /// **'18 رقم'**
  String get ninHint;

  /// No description provided for @firstName.
  ///
  /// In ar, this message translates to:
  /// **'الاسم'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In ar, this message translates to:
  /// **'اللقب'**
  String get lastName;

  /// No description provided for @phone.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهاتف'**
  String get phone;

  /// No description provided for @email.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني'**
  String get email;

  /// No description provided for @nextVerify.
  ///
  /// In ar, this message translates to:
  /// **'التالي — التحقق'**
  String get nextVerify;

  /// No description provided for @verifyEmailTitle.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد البريد الإلكتروني'**
  String get verifyEmailTitle;

  /// No description provided for @otpHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل الرمز المكوّن من 6 أرقام المرسل إلى بريدك'**
  String get otpHint;

  /// No description provided for @confirm.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get confirm;

  /// No description provided for @resendCode.
  ///
  /// In ar, this message translates to:
  /// **'إعادة إرسال الرمز'**
  String get resendCode;

  /// No description provided for @resendIn.
  ///
  /// In ar, this message translates to:
  /// **'إعادة الإرسال خلال {seconds} ثانية'**
  String resendIn(int seconds);

  /// No description provided for @resendInTimer.
  ///
  /// In ar, this message translates to:
  /// **'إعادة الإرسال خلال {time}'**
  String resendInTimer(String time);

  /// No description provided for @activeAuctions.
  ///
  /// In ar, this message translates to:
  /// **'المزادات النشطة'**
  String get activeAuctions;

  /// No description provided for @noAuctions.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مزادات حاليًا'**
  String get noAuctions;

  /// No description provided for @currentPrice.
  ///
  /// In ar, this message translates to:
  /// **'السعر الحالي'**
  String get currentPrice;

  /// No description provided for @openingPrice.
  ///
  /// In ar, this message translates to:
  /// **'السعر الافتتاحي'**
  String get openingPrice;

  /// No description provided for @highestBid.
  ///
  /// In ar, this message translates to:
  /// **'أعلى مزايدة'**
  String get highestBid;

  /// No description provided for @depositRequired.
  ///
  /// In ar, this message translates to:
  /// **'التأمين المطلوب'**
  String get depositRequired;

  /// No description provided for @bidders.
  ///
  /// In ar, this message translates to:
  /// **'{count} مزايد'**
  String bidders(int count);

  /// No description provided for @live.
  ///
  /// In ar, this message translates to:
  /// **'مباشر'**
  String get live;

  /// No description provided for @comingSoon.
  ///
  /// In ar, this message translates to:
  /// **'قريبًا'**
  String get comingSoon;

  /// No description provided for @active.
  ///
  /// In ar, this message translates to:
  /// **'نشط'**
  String get active;

  /// No description provided for @ended.
  ///
  /// In ar, this message translates to:
  /// **'منتهٍ'**
  String get ended;

  /// No description provided for @cancelled.
  ///
  /// In ar, this message translates to:
  /// **'ملغى'**
  String get cancelled;

  /// No description provided for @description.
  ///
  /// In ar, this message translates to:
  /// **'الوصف'**
  String get description;

  /// No description provided for @auctionsTitle.
  ///
  /// In ar, this message translates to:
  /// **'المزادات'**
  String get auctionsTitle;

  /// No description provided for @searchAuctionHint.
  ///
  /// In ar, this message translates to:
  /// **'ابحث عن مزاد...'**
  String get searchAuctionHint;

  /// No description provided for @filter.
  ///
  /// In ar, this message translates to:
  /// **'تصفية'**
  String get filter;

  /// No description provided for @filterAll.
  ///
  /// In ar, this message translates to:
  /// **'الكل'**
  String get filterAll;

  /// No description provided for @filterStatusActive.
  ///
  /// In ar, this message translates to:
  /// **'نشط'**
  String get filterStatusActive;

  /// No description provided for @filterStatusUpcoming.
  ///
  /// In ar, this message translates to:
  /// **'قادم'**
  String get filterStatusUpcoming;

  /// No description provided for @filterStatusExtended.
  ///
  /// In ar, this message translates to:
  /// **'مُمدّد'**
  String get filterStatusExtended;

  /// No description provided for @filterStatusClosed.
  ///
  /// In ar, this message translates to:
  /// **'مُغلق'**
  String get filterStatusClosed;

  /// No description provided for @auctionTypeSale.
  ///
  /// In ar, this message translates to:
  /// **'بيع'**
  String get auctionTypeSale;

  /// No description provided for @auctionTypeLease.
  ///
  /// In ar, this message translates to:
  /// **'إيجار'**
  String get auctionTypeLease;

  /// No description provided for @auctionsCount.
  ///
  /// In ar, this message translates to:
  /// **'{count} مزاد'**
  String auctionsCount(String count);

  /// No description provided for @clearAll.
  ///
  /// In ar, this message translates to:
  /// **'مسح الكل'**
  String get clearAll;

  /// No description provided for @noMoreResults.
  ///
  /// In ar, this message translates to:
  /// **'— لا مزيد من النتائج —'**
  String get noMoreResults;

  /// No description provided for @noMatchingAuctions.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مزادات مطابقة'**
  String get noMatchingAuctions;

  /// No description provided for @tryAdjustingFilters.
  ///
  /// In ar, this message translates to:
  /// **'جرّب تعديل البحث أو الفلاتر'**
  String get tryAdjustingFilters;

  /// No description provided for @resetFilters.
  ///
  /// In ar, this message translates to:
  /// **'إعادة تعيين الفلاتر'**
  String get resetFilters;

  /// No description provided for @filterAuctions.
  ///
  /// In ar, this message translates to:
  /// **'تصفية المزادات'**
  String get filterAuctions;

  /// No description provided for @type.
  ///
  /// In ar, this message translates to:
  /// **'النوع'**
  String get type;

  /// No description provided for @wilaya.
  ///
  /// In ar, this message translates to:
  /// **'الولاية'**
  String get wilaya;

  /// No description provided for @clearSelection.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء التحديد'**
  String get clearSelection;

  /// No description provided for @searchWilayaHint.
  ///
  /// In ar, this message translates to:
  /// **'ابحث عن ولاية...'**
  String get searchWilayaHint;

  /// No description provided for @wilayasLoadError.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر تحميل الولايات'**
  String get wilayasLoadError;

  /// No description provided for @noWilayaMatch.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد ولاية بهذا الاسم'**
  String get noWilayaMatch;

  /// No description provided for @reset.
  ///
  /// In ar, this message translates to:
  /// **'إعادة تعيين'**
  String get reset;

  /// No description provided for @showResults.
  ///
  /// In ar, this message translates to:
  /// **'عرض النتائج'**
  String get showResults;

  /// No description provided for @registerAndPay.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل ودفع'**
  String get registerAndPay;

  /// No description provided for @bid.
  ///
  /// In ar, this message translates to:
  /// **'مزايدة'**
  String get bid;

  /// No description provided for @liveBidding.
  ///
  /// In ar, this message translates to:
  /// **'المزاد المباشر'**
  String get liveBidding;

  /// No description provided for @bidHistory.
  ///
  /// In ar, this message translates to:
  /// **'سجل المزايدات'**
  String get bidHistory;

  /// No description provided for @noBidsYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مزايدات بعد'**
  String get noBidsYet;

  /// No description provided for @youAreHighest.
  ///
  /// In ar, this message translates to:
  /// **'أنت صاحب أعلى مزايدة'**
  String get youAreHighest;

  /// No description provided for @placeBidAmount.
  ///
  /// In ar, this message translates to:
  /// **'زايد بـ {amount}'**
  String placeBidAmount(String amount);

  /// No description provided for @currentHighestBid.
  ///
  /// In ar, this message translates to:
  /// **'أعلى مزايدة حالية'**
  String get currentHighestBid;

  /// No description provided for @currencyDzd.
  ///
  /// In ar, this message translates to:
  /// **'دج'**
  String get currencyDzd;

  /// No description provided for @bidsCount.
  ///
  /// In ar, this message translates to:
  /// **'{count} مزايدة'**
  String bidsCount(int count);

  /// No description provided for @kycTitle.
  ///
  /// In ar, this message translates to:
  /// **'التحقق من الهوية (KYC)'**
  String get kycTitle;

  /// No description provided for @kycWarning.
  ///
  /// In ar, this message translates to:
  /// **'أكمل النموذج خلال 30 يومًا وإلا سيُعلَّق الحساب'**
  String get kycWarning;

  /// No description provided for @requiredDocuments.
  ///
  /// In ar, this message translates to:
  /// **'المستندات المطلوبة'**
  String get requiredDocuments;

  /// No description provided for @personalData.
  ///
  /// In ar, this message translates to:
  /// **'البيانات الشخصية'**
  String get personalData;

  /// No description provided for @finishVerification.
  ///
  /// In ar, this message translates to:
  /// **'إنهاء التحقق'**
  String get finishVerification;

  /// No description provided for @uploadDocsFirst.
  ///
  /// In ar, this message translates to:
  /// **'ارفع المستندات الثلاثة المطلوبة أولًا'**
  String get uploadDocsFirst;

  /// No description provided for @kycSubmitted.
  ///
  /// In ar, this message translates to:
  /// **'تم إرسال طلبك للمراجعة'**
  String get kycSubmitted;

  /// No description provided for @kycDocIdFront.
  ///
  /// In ar, this message translates to:
  /// **'بطاقة الهوية (الوجه)'**
  String get kycDocIdFront;

  /// No description provided for @kycDocIdBack.
  ///
  /// In ar, this message translates to:
  /// **'بطاقة الهوية (الظهر)'**
  String get kycDocIdBack;

  /// No description provided for @kycDocSelfie.
  ///
  /// In ar, this message translates to:
  /// **'سيلفي مع البطاقة'**
  String get kycDocSelfie;

  /// No description provided for @kycDocBiometric.
  ///
  /// In ar, this message translates to:
  /// **'الصورة البيومترية'**
  String get kycDocBiometric;

  /// No description provided for @kycStatusPending.
  ///
  /// In ar, this message translates to:
  /// **'بانتظار الإكمال'**
  String get kycStatusPending;

  /// No description provided for @kycStatusUnderReview.
  ///
  /// In ar, this message translates to:
  /// **'قيد المراجعة'**
  String get kycStatusUnderReview;

  /// No description provided for @kycStatusVerified.
  ///
  /// In ar, this message translates to:
  /// **'موثّق'**
  String get kycStatusVerified;

  /// No description provided for @kycStatusRejected.
  ///
  /// In ar, this message translates to:
  /// **'مرفوض'**
  String get kycStatusRejected;

  /// No description provided for @kycStatusLabel.
  ///
  /// In ar, this message translates to:
  /// **'الحالة: {status}'**
  String kycStatusLabel(String status);

  /// No description provided for @firstNameFr.
  ///
  /// In ar, this message translates to:
  /// **'الاسم بالفرنسية'**
  String get firstNameFr;

  /// No description provided for @lastNameFr.
  ///
  /// In ar, this message translates to:
  /// **'اللقب بالفرنسية'**
  String get lastNameFr;

  /// No description provided for @fatherName.
  ///
  /// In ar, this message translates to:
  /// **'اسم الأب'**
  String get fatherName;

  /// No description provided for @motherName.
  ///
  /// In ar, this message translates to:
  /// **'اسم الأم'**
  String get motherName;

  /// No description provided for @motherSurname.
  ///
  /// In ar, this message translates to:
  /// **'لقب الأم'**
  String get motherSurname;

  /// No description provided for @expectedIncome.
  ///
  /// In ar, this message translates to:
  /// **'الدخل الشهري المتوقع'**
  String get expectedIncome;

  /// No description provided for @idNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم بطاقة الهوية'**
  String get idNumber;

  /// No description provided for @commune.
  ///
  /// In ar, this message translates to:
  /// **'البلدية'**
  String get commune;

  /// No description provided for @myAuctionsActive.
  ///
  /// In ar, this message translates to:
  /// **'نشطة'**
  String get myAuctionsActive;

  /// No description provided for @myAuctionsWon.
  ///
  /// In ar, this message translates to:
  /// **'رابحة'**
  String get myAuctionsWon;

  /// No description provided for @myAuctionsLost.
  ///
  /// In ar, this message translates to:
  /// **'خاسرة'**
  String get myAuctionsLost;

  /// No description provided for @myAuctionsUpcoming.
  ///
  /// In ar, this message translates to:
  /// **'قادمة'**
  String get myAuctionsUpcoming;

  /// No description provided for @myAuctionsStatusWinning.
  ///
  /// In ar, this message translates to:
  /// **'أنت الأعلى'**
  String get myAuctionsStatusWinning;

  /// No description provided for @myAuctionsStatusOutbid.
  ///
  /// In ar, this message translates to:
  /// **'تمت المزايدة عليك'**
  String get myAuctionsStatusOutbid;

  /// No description provided for @myAuctionsStatusAwaitingPayment.
  ///
  /// In ar, this message translates to:
  /// **'بانتظار الدفع'**
  String get myAuctionsStatusAwaitingPayment;

  /// No description provided for @myAuctionsStatusCompleted.
  ///
  /// In ar, this message translates to:
  /// **'مكتمل'**
  String get myAuctionsStatusCompleted;

  /// No description provided for @myAuctionsStatusRefund.
  ///
  /// In ar, this message translates to:
  /// **'تم استرداد التأمين'**
  String get myAuctionsStatusRefund;

  /// No description provided for @myAuctionsStatusUpcoming.
  ///
  /// In ar, this message translates to:
  /// **'لم يبدأ بعد'**
  String get myAuctionsStatusUpcoming;

  /// No description provided for @myAuctionsPriceCurrentBid.
  ///
  /// In ar, this message translates to:
  /// **'مزايدتك الحالية'**
  String get myAuctionsPriceCurrentBid;

  /// No description provided for @myAuctionsPriceKnockdown.
  ///
  /// In ar, this message translates to:
  /// **'سعر الرسو'**
  String get myAuctionsPriceKnockdown;

  /// No description provided for @myAuctionsPriceFinal.
  ///
  /// In ar, this message translates to:
  /// **'السعر النهائي'**
  String get myAuctionsPriceFinal;

  /// No description provided for @myAuctionsEmptyActive.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مزادات نشطة'**
  String get myAuctionsEmptyActive;

  /// No description provided for @myAuctionsEmptyWon.
  ///
  /// In ar, this message translates to:
  /// **'لم تربح أي مزاد بعد'**
  String get myAuctionsEmptyWon;

  /// No description provided for @myAuctionsEmptyLost.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مزادات خاسرة'**
  String get myAuctionsEmptyLost;

  /// No description provided for @myAuctionsEmptyUpcoming.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مزادات قادمة'**
  String get myAuctionsEmptyUpcoming;

  /// No description provided for @notifications.
  ///
  /// In ar, this message translates to:
  /// **'الإشعارات'**
  String get notifications;

  /// No description provided for @markAllRead.
  ///
  /// In ar, this message translates to:
  /// **'تعليم الكل'**
  String get markAllRead;

  /// No description provided for @noNotifications.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد إشعارات'**
  String get noNotifications;

  /// No description provided for @timeNow.
  ///
  /// In ar, this message translates to:
  /// **'الآن'**
  String get timeNow;

  /// No description provided for @timeMinutesAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ {minutes} دقيقة'**
  String timeMinutesAgo(int minutes);

  /// No description provided for @timeHoursAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ {hours} ساعة'**
  String timeHoursAgo(int hours);

  /// No description provided for @timeDaysAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ {days} يوم'**
  String timeDaysAgo(int days);

  /// No description provided for @profile.
  ///
  /// In ar, this message translates to:
  /// **'الملف الشخصي'**
  String get profile;

  /// No description provided for @verifiedKyc.
  ///
  /// In ar, this message translates to:
  /// **'موثّق — KYC مكتمل'**
  String get verifiedKyc;

  /// No description provided for @changePassword.
  ///
  /// In ar, this message translates to:
  /// **'تغيير كلمة المرور'**
  String get changePassword;

  /// No description provided for @language.
  ///
  /// In ar, this message translates to:
  /// **'اللغة'**
  String get language;

  /// No description provided for @privacy.
  ///
  /// In ar, this message translates to:
  /// **'الخصوصية'**
  String get privacy;

  /// No description provided for @logout.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الخروج'**
  String get logout;

  /// No description provided for @save.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get save;

  /// No description provided for @edit.
  ///
  /// In ar, this message translates to:
  /// **'تعديل'**
  String get edit;

  /// No description provided for @profession.
  ///
  /// In ar, this message translates to:
  /// **'المهنة'**
  String get profession;

  /// No description provided for @address.
  ///
  /// In ar, this message translates to:
  /// **'العنوان'**
  String get address;

  /// No description provided for @postalCode.
  ///
  /// In ar, this message translates to:
  /// **'الرمز البريدي'**
  String get postalCode;

  /// No description provided for @languageArabic.
  ///
  /// In ar, this message translates to:
  /// **'العربية'**
  String get languageArabic;

  /// No description provided for @languageFrench.
  ///
  /// In ar, this message translates to:
  /// **'الفرنسية'**
  String get languageFrench;

  /// No description provided for @languageEnglish.
  ///
  /// In ar, this message translates to:
  /// **'الإنجليزية'**
  String get languageEnglish;

  /// No description provided for @chooseLanguage.
  ///
  /// In ar, this message translates to:
  /// **'اختر اللغة'**
  String get chooseLanguage;

  /// No description provided for @retry.
  ///
  /// In ar, this message translates to:
  /// **'إعادة المحاولة'**
  String get retry;

  /// No description provided for @errorGeneric.
  ///
  /// In ar, this message translates to:
  /// **'حدث خطأ، حاول مجددًا'**
  String get errorGeneric;

  /// No description provided for @errorNetwork.
  ///
  /// In ar, this message translates to:
  /// **'تحقق من اتصالك بالإنترنت'**
  String get errorNetwork;

  /// No description provided for @paymentSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم الدفع بنجاح'**
  String get paymentSuccess;

  /// No description provided for @paymentCancelled.
  ///
  /// In ar, this message translates to:
  /// **'تم إلغاء الدفع'**
  String get paymentCancelled;

  /// No description provided for @securePayment.
  ///
  /// In ar, this message translates to:
  /// **'الدفع الآمن'**
  String get securePayment;

  /// No description provided for @valRequired.
  ///
  /// In ar, this message translates to:
  /// **'هذا الحقل مطلوب'**
  String get valRequired;

  /// No description provided for @valEmailInvalid.
  ///
  /// In ar, this message translates to:
  /// **'بريد إلكتروني غير صالح'**
  String get valEmailInvalid;

  /// No description provided for @valPasswordShort.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور 12 حرفًا على الأقل'**
  String get valPasswordShort;

  /// No description provided for @valPasswordMismatch.
  ///
  /// In ar, this message translates to:
  /// **'كلمتا المرور غير متطابقتين'**
  String get valPasswordMismatch;

  /// No description provided for @valNinInvalid.
  ///
  /// In ar, this message translates to:
  /// **'رقم التعريف يجب أن يكون 18 رقمًا'**
  String get valNinInvalid;

  /// No description provided for @valPhoneInvalid.
  ///
  /// In ar, this message translates to:
  /// **'رقم هاتف غير صالح (10 أرقام تبدأ بـ 0)'**
  String get valPhoneInvalid;

  /// No description provided for @valNameShort.
  ///
  /// In ar, this message translates to:
  /// **'الاسم قصير جدًا'**
  String get valNameShort;

  /// No description provided for @offlineBanner.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد اتصال بالإنترنت'**
  String get offlineBanner;

  /// No description provided for @backOnline.
  ///
  /// In ar, this message translates to:
  /// **'تم استعادة الاتصال'**
  String get backOnline;

  /// No description provided for @appealsTitle.
  ///
  /// In ar, this message translates to:
  /// **'الاعتراضات'**
  String get appealsTitle;

  /// No description provided for @appealsEmpty.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد اعتراضات'**
  String get appealsEmpty;

  /// No description provided for @appealSubmitted.
  ///
  /// In ar, this message translates to:
  /// **'تم إرسال اعتراضك'**
  String get appealSubmitted;

  /// No description provided for @newAppeal.
  ///
  /// In ar, this message translates to:
  /// **'تقديم اعتراض جديد'**
  String get newAppeal;

  /// No description provided for @newAppealTitle.
  ///
  /// In ar, this message translates to:
  /// **'اعتراض جديد'**
  String get newAppealTitle;

  /// No description provided for @appealSubject.
  ///
  /// In ar, this message translates to:
  /// **'الموضوع'**
  String get appealSubject;

  /// No description provided for @appealSubjectHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: اعتراض على نتيجة المزاد'**
  String get appealSubjectHint;

  /// No description provided for @appealReason.
  ///
  /// In ar, this message translates to:
  /// **'السبب التفصيلي'**
  String get appealReason;

  /// No description provided for @appealReasonHint.
  ///
  /// In ar, this message translates to:
  /// **'اشرح سبب الاعتراض بالتفصيل...'**
  String get appealReasonHint;

  /// No description provided for @submitAppeal.
  ///
  /// In ar, this message translates to:
  /// **'إرسال الاعتراض'**
  String get submitAppeal;

  /// No description provided for @appealStatusPending.
  ///
  /// In ar, this message translates to:
  /// **'قيد المراجعة'**
  String get appealStatusPending;

  /// No description provided for @appealStatusAnswered.
  ///
  /// In ar, this message translates to:
  /// **'تمت الإجابة'**
  String get appealStatusAnswered;

  /// No description provided for @appealStatusRejected.
  ///
  /// In ar, this message translates to:
  /// **'مرفوض'**
  String get appealStatusRejected;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
