/// ثوابت الـ API — مأخوذة من Postman collection الفعلية
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

  // ===== Auth =====
  static const String register = '$apiPrefix/auth/register';
  static const String login = '$apiPrefix/auth/login';
  static const String verifyOtp = '$apiPrefix/auth/verify-otp';
  static const String resendOtp = '$apiPrefix/auth/resend-otp';
  static const String refresh = '$apiPrefix/auth/refresh';
  static const String me = '$apiPrefix/auth/me';
  static const String logout = '$apiPrefix/auth/logout';

  // ===== Auctions =====
  static const String auctions = '$apiPrefix/auctions';
  static String auctionDetail(String id) => '$apiPrefix/auctions/$id';
  static String auctionBids(String id) => '$apiPrefix/auctions/$id/bids';
  static String auctionPrice(String id) => '$apiPrefix/auctions/$id/price';
  static String acknowledgeBook(String id) =>
      '$apiPrefix/auctions/$id/acknowledge-book';
  static String registerInAuction(String id) =>
      '$apiPrefix/auctions/$id/register';
  static String placeBid(String id) => '$apiPrefix/auctions/$id/bid';
  static String finalPayment(String id) =>
      '$apiPrefix/auctions/$id/final-payment';
  static String auctionQuestions(String id) =>
      '$apiPrefix/auctions/$id/questions';

  // ===== Dashboard =====
  static const String dashboard = '$apiPrefix/dashboard';
  static const String myAuctions = '$apiPrefix/my-auctions';

  // ===== Geographic =====
  static const String wilayas = '$apiPrefix/wilayas';
  static String communes(int wilayaId) =>
      '$apiPrefix/wilayas/$wilayaId/communes';

  // ===== KYC =====
  static const String kyc = '$apiPrefix/kyc';
  static String kycUpload(String type) => '$apiPrefix/kyc/upload/$type';
  static const String kycSubmit = '$apiPrefix/kyc/submit';

  // ===== Notifications =====
  static const String notifications = '$apiPrefix/notifications';
  static const String readAll = '$apiPrefix/notifications/read-all';
  static String markNotificationRead(String id) =>
      '$apiPrefix/notifications/$id/read';

  // ===== Profile / Documents / Appeals =====
  static const String profile = '$apiPrefix/profile';
  static const String appeals = '$apiPrefix/appeals';
  static String document(String id) => '$apiPrefix/documents/$id/download';

  // ===== Payments =====
  static String paymentStatus(String ref) => '$apiPrefix/payments/$ref/status';
  static const String paymentCallback = '$apiPrefix/payments/callback';
}
