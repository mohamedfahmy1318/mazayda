/// عقد خدمة الـ realtime — مجرّد عن المزوّد (Pusher حاليًا).
/// الميزة: لو غيّرنا المزوّد لاحقًا، الـ features لا تتأثر.
abstract class RealtimeService {
  /// الاتصال بالخادم (مرة واحدة عند بدء التطبيق أو عند الحاجة).
  Future<void> connect();

  /// الاشتراك في قناة وتلقّي الأحداث.
  /// [onEvent] يُستدعى مع (اسم الحدث، البيانات).
  Future<void> subscribe(
    String channelName, {
    required void Function(String event, Map<String, dynamic> data) onEvent,
  });

  /// إلغاء الاشتراك من قناة.
  Future<void> unsubscribe(String channelName);

  /// قطع الاتصال نهائيًا.
  Future<void> disconnect();
}
