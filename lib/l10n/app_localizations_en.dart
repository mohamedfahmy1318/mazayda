// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Mazayada';

  @override
  String get navHome => 'Home';

  @override
  String get navMyAuctions => 'My Auctions';

  @override
  String get navPayments => 'Payments';

  @override
  String get navProfile => 'Profile';

  @override
  String get splashTagline => 'National Public Auctions Platform';

  @override
  String get login => 'Login';

  @override
  String get loginButton => 'Sign in';

  @override
  String get register => 'Create Account';

  @override
  String get noAccountRegister => 'No account? Create one';

  @override
  String get ninOrEmail => 'NIN or email';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm password';

  @override
  String get nin => 'National ID Number (NIN)';

  @override
  String get ninHint => '18 digits';

  @override
  String get firstName => 'First name';

  @override
  String get lastName => 'Last name';

  @override
  String get phone => 'Phone number';

  @override
  String get email => 'Email';

  @override
  String get nextVerify => 'Next — Verify';

  @override
  String get verifyEmailTitle => 'Email Verification';

  @override
  String get otpHint => 'Enter the 6-digit code sent to your email';

  @override
  String get confirm => 'Confirm';

  @override
  String get resendCode => 'Resend code';

  @override
  String resendIn(int seconds) {
    return 'Resend in ${seconds}s';
  }

  @override
  String get activeAuctions => 'Active Auctions';

  @override
  String get noAuctions => 'No auctions available';

  @override
  String get currentPrice => 'Current price';

  @override
  String get openingPrice => 'Opening price';

  @override
  String get highestBid => 'Highest bid';

  @override
  String get depositRequired => 'Deposit required';

  @override
  String bidders(int count) {
    return '$count bidders';
  }

  @override
  String get live => 'Live';

  @override
  String get comingSoon => 'Soon';

  @override
  String get description => 'Description';

  @override
  String get registerAndPay => 'Register & Pay';

  @override
  String get bid => 'Bid';

  @override
  String get liveBidding => 'Live Bidding';

  @override
  String get bidHistory => 'Bid history';

  @override
  String get noBidsYet => 'No bids yet';

  @override
  String get youAreHighest => 'You have the highest bid';

  @override
  String placeBidAmount(String amount) {
    return 'Bid $amount';
  }

  @override
  String get kycTitle => 'Identity Verification (KYC)';

  @override
  String get kycWarning =>
      'Complete the form within 30 days or your account will be suspended';

  @override
  String get requiredDocuments => 'Required documents';

  @override
  String get personalData => 'Personal data';

  @override
  String get finishVerification => 'Finish verification';

  @override
  String get uploadDocsFirst => 'Upload the three required documents first';

  @override
  String get myAuctionsActive => 'Active';

  @override
  String get myAuctionsWon => 'Won';

  @override
  String get myAuctionsLost => 'Lost';

  @override
  String get myAuctionsUpcoming => 'Upcoming';

  @override
  String get notifications => 'Notifications';

  @override
  String get markAllRead => 'Mark all';

  @override
  String get noNotifications => 'No notifications';

  @override
  String get profile => 'Profile';

  @override
  String get verifiedKyc => 'Verified — KYC complete';

  @override
  String get changePassword => 'Change password';

  @override
  String get language => 'Language';

  @override
  String get privacy => 'Privacy';

  @override
  String get logout => 'Logout';

  @override
  String get save => 'Save';

  @override
  String get edit => 'Edit';

  @override
  String get profession => 'Profession';

  @override
  String get address => 'Address';

  @override
  String get postalCode => 'Postal code';

  @override
  String get languageArabic => 'Arabic';

  @override
  String get languageFrench => 'French';

  @override
  String get languageEnglish => 'English';

  @override
  String get chooseLanguage => 'Choose language';

  @override
  String get retry => 'Retry';

  @override
  String get errorGeneric => 'An error occurred, please try again';

  @override
  String get errorNetwork => 'Check your internet connection';

  @override
  String get paymentSuccess => 'Payment successful';

  @override
  String get paymentCancelled => 'Payment cancelled';

  @override
  String get securePayment => 'Secure payment';

  @override
  String get valRequired => 'This field is required';

  @override
  String get valEmailInvalid => 'Invalid email';

  @override
  String get valPasswordShort => 'Password must be at least 12 characters';

  @override
  String get valPasswordMismatch => 'Passwords do not match';

  @override
  String get valNinInvalid => 'NIN must be 18 digits';

  @override
  String get valPhoneInvalid => 'Invalid phone (10 digits starting with 0)';

  @override
  String get valNameShort => 'Name too short';

  @override
  String get offlineBanner => 'No internet connection';

  @override
  String get backOnline => 'Connection restored';

  @override
  String get appealsTitle => 'Appeals';

  @override
  String get appealsEmpty => 'No appeals';

  @override
  String get appealSubmitted => 'Your appeal has been submitted';

  @override
  String get newAppeal => 'Submit a new appeal';

  @override
  String get newAppealTitle => 'New appeal';

  @override
  String get appealSubject => 'Subject';

  @override
  String get appealSubjectHint => 'e.g. Appeal about the auction result';

  @override
  String get appealReason => 'Detailed reason';

  @override
  String get appealReasonHint =>
      'Explain the reason for your appeal in detail...';

  @override
  String get submitAppeal => 'Send appeal';

  @override
  String get appealStatusPending => 'Under review';

  @override
  String get appealStatusAnswered => 'Answered';

  @override
  String get appealStatusRejected => 'Rejected';
}
