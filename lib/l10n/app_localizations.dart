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

  /// No description provided for @description.
  ///
  /// In ar, this message translates to:
  /// **'الوصف'**
  String get description;

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
