/// ثوابت الـ API — مأخوذة من Postman collection الفعلية (نسخة محدّثة: 53 endpoint)
class ApiConstants {
  ApiConstants._();

  static const String baseUrl = 'https://mazayada.findosystem.com';
  static const String apiPrefix = '/api/v1';

  // مهلات الاتصال (بالملي ثانية)
  static const int connectTimeout = 30000;
  static const int receiveTimeout = 30000;

  // ===== Pusher (realtime) — استبدل بالقيم الفعلية من لوحة Pusher =====
  static const String pusherKey = 'YOUR_PUSHER_KEY';
  static const String pusherCluster = 'eu';
  // قناة المزاد: نشترك فيها لتلقّي تحديثات السعر/المزايدات لحظيًا
  static String auctionChannel(String auctionId) => 'auction.$auctionId';
  // أسماء الأحداث المتوقّعة من الخادم (Laravel broadcasting)
  static const String evtNewBid = 'bid.placed';
  static const String evtPriceUpdate = 'price.updated';
  // ⚠️ auth القنوات الخاصة — لاحظ أنه بدون /v1 (المسار /api/broadcasting/auth)
  static const String broadcastingAuth = '/api/broadcasting/auth';

  // ===== Auth =====
  static const String register = '$apiPrefix/auth/register';
  static const String login = '$apiPrefix/auth/login';
  static const String verifyOtp = '$apiPrefix/auth/verify-otp';
  static const String resendOtp = '$apiPrefix/auth/resend-otp';
  static const String refresh = '$apiPrefix/auth/refresh';
  static const String me = '$apiPrefix/auth/me';
  static const String logout = '$apiPrefix/auth/logout';
  // استرجاع كلمة السر (خطوتان: طلب رمز ثم التحقق وتعيين كلمة جديدة)
  static const String passwordRequest = '$apiPrefix/auth/password/request';
  static const String passwordVerify = '$apiPrefix/auth/password/verify';
  // الاسترجاع بالسؤال السري (خطوتان: كشف السؤال ثم التحقق من الإجابة)
  static const String recoverReveal = '$apiPrefix/auth/recover/reveal';
  static const String recoverVerify = '$apiPrefix/auth/recover/verify';

  // ===== Auctions (تصفّح عام للقراءة فقط) =====
  static const String auctions = '$apiPrefix/auctions';
  static const String auctionSearch =
      '$apiPrefix/auctions/search'; // ?q (حد أدنى حرفان)
  static const String auctionFilters =
      '$apiPrefix/auctions/filters'; // ?wilaya (اختياري)
  static String auctionDetail(String id) => '$apiPrefix/auctions/$id';
  static String auctionBids(String id) =>
      '$apiPrefix/auctions/$id/bids'; // ?limit
  static String auctionPrice(String id) => '$apiPrefix/auctions/$id/price';
  static String auctionQuestions(String id) =>
      '$apiPrefix/auctions/$id/questions';

  // ===== Auction registration / participation =====
  // ⚠️ استبدل acknowledge-book القديم — buy-book الآن عملية دفع تُرجع redirect_url
  static String buyBook(String id) => '$apiPrefix/auctions/$id/buy-book';
  static String registerInAuction(String id) =>
      '$apiPrefix/auctions/$id/register';
  static String placeBid(String id) => '$apiPrefix/auctions/$id/bid';

  // ===== Payments =====
  static String paymentStatus(String ref) => '$apiPrefix/payments/$ref/status';
  static const String paymentCallback =
      '$apiPrefix/payments/callback'; // ?ref&decision
  // الدفع النهائي للفائز: معاينة الرسوم (قراءة فقط) ثم بدء الدفع
  static String finalPaymentPreview(String id) =>
      '$apiPrefix/auctions/$id/final-payment/preview';
  static String finalPayment(String id) =>
      '$apiPrefix/auctions/$id/final-payment';

  // ===== Auction Q&A =====
  static String askQuestion(String id) => '$apiPrefix/auctions/$id/questions';

  // ===== Appeals (الطعون) =====
  static const String appeals = '$apiPrefix/appeals';
  static String appealDetail(String id) => '$apiPrefix/appeals/$id';
  static String submitAppeal(String auctionId) =>
      '$apiPrefix/auctions/$auctionId/appeals';

  // ===== Dashboard =====
  static const String dashboard = '$apiPrefix/dashboard';
  static const String myAuctions =
      '$apiPrefix/my-auctions'; // ?tab=active|won|lost|upcoming

  // ===== Geographic =====
  static const String wilayas = '$apiPrefix/wilayas';
  static String communes(int wilayaId) =>
      '$apiPrefix/wilayas/$wilayaId/communes';

  // ===== KYC =====
  static const String kyc = '$apiPrefix/kyc';
  static String kycUpload(String type) => '$apiPrefix/kyc/upload/$type';
  static const String kycSubmit = '$apiPrefix/kyc/submit';
  static String kycDocument(String type) => '$apiPrefix/kyc/document/$type';

  // ===== Commercial Register (السجل التجاري) — بوابة موازية للـ KYC =====
  static const String commercialRegister = '$apiPrefix/commercial-register';
  static String commercialRegisterDocument(String type) =>
      '$apiPrefix/commercial-register/document/$type'; // register | tax-card

  // ===== Notifications =====
  static const String notifications = '$apiPrefix/notifications';
  static const String notificationsUnreadCount =
      '$apiPrefix/notifications/unread-count';
  static const String readAll = '$apiPrefix/notifications/read-all';
  static String markNotificationRead(String id) =>
      '$apiPrefix/notifications/$id/read';

  // ===== Profile =====
  static const String profile = '$apiPrefix/profile'; // GET + PUT

  // ===== Documents (مكتبة وثائق المستخدم) =====
  static const String documents =
      '$apiPrefix/documents'; // ?search&type[]&preset&...
  static const String documentsSummary = '$apiPrefix/documents/summary';
  static String document(String id) => '$apiPrefix/documents/$id/download';

  // ===== Financial Reports (تقاريري المالية) =====
  static const String reportsSummary = '$apiPrefix/reports/summary';
  static const String reportsTransactions = '$apiPrefix/reports/transactions';

  // ===== Devices (Push) =====
  // ⚠️ لسه غير موجود في الباك (طلب BE-11) — التطبيق بينادي عليه ويتجاهل
  // الفشل بهدوء، فأول ما ينزل يشتغل من غير أي تعديل.
  static const String devices = '$apiPrefix/devices';

  // ===== System =====
  static const String ping = '$apiPrefix/ping';
}
