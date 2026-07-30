import 'package:injectable/injectable.dart';
import '../constants/api_constants.dart';
import '../network/api_client.dart';

/// إعدادات البثّ اللحظي المنشورة من السيرفر — `GET /ping → data.realtime`
/// (BE-14).
///
/// السيرفر بيرجّع الـ **key العام بس**؛ `REVERB_APP_SECRET` مابيتنشرش أبدًا.
class RealtimeConfig {
  /// المزوّد — `reverb` حاليًا (بروتوكول Pusher).
  final String driver;

  /// المفتاح العام.
  final String key;

  /// الـ host العام اللي العميل بيتصل بيه (مش الـ host الداخلي للسيرفر).
  final String host;
  final int port;

  /// `https` → WSS، `http` → WS.
  final String scheme;

  /// مسار تصريح القنوات الخاصة — مسار الـ **API** بالتوكن (BE-10).
  final String authEndpoint;

  const RealtimeConfig({
    required this.driver,
    required this.key,
    required this.host,
    required this.port,
    required this.scheme,
    required this.authEndpoint,
  });

  bool get useTls => scheme == 'https' || scheme == 'wss';

  /// إعدادات مكتملة من ناحية السيرفر.
  bool get isUsable => key.isNotEmpty && host.isNotEmpty;

  /// عنوان الـ WebSocket اللي المفروض نتصل بيه (للتشخيص/اللوج).
  String get socketUrl =>
      '${useTls ? 'wss' : 'ws'}://$host:$port/app/$key';

  /// هل حزمة العميل الحالية تقدر تتصل بالإعدادات دي؟
  ///
  /// ⚠️ **قيد في الحزمة، مش في الباك:** `pusher_channels_flutter` (2.6.x)
  /// بتاخد `cluster` بس ومفيهاش `host`/`port` — يعني بتتصل بسحابة Pusher
  /// حصريًا ومش بتعرف توصل لسيرفر Reverb مستضاف بنفسه.
  ///
  /// عمداً بنرجّع false هنا بدل ما نمرّر الـ host كـ `cluster`: كده كنا
  /// هنتصل بـ `ws-<host>.pusher.com` — سيرفر غلط تمامًا — والفشل كان
  /// هيبان كـ «مشكلة شبكة» غامضة. الرفض الصريح بيخلّي الـ polling يشتغل.
  ///
  /// لتشغيل البثّ فعليًا لازم نستبدل الحزمة بواحدة بتدعم host مخصّص
  /// (مثلًا `dart_pusher_channels`).
  bool get supportedByClient => false;

  static RealtimeConfig? fromJson(Map<String, dynamic> json) {
    final host = (json['host'] as String?) ?? '';
    final key = (json['key'] as String?) ?? '';
    if (host.isEmpty || key.isEmpty) return null;

    final scheme = (json['scheme'] as String?) ?? 'https';
    return RealtimeConfig(
      driver: (json['driver'] as String?) ?? 'reverb',
      key: key,
      host: host,
      port: (json['port'] as num?)?.toInt() ?? (scheme == 'https' ? 443 : 80),
      scheme: scheme,
      authEndpoint:
          (json['auth_endpoint'] as String?) ??
          '${ApiConstants.baseUrl}${ApiConstants.broadcastingAuth}',
    );
  }
}

/// يجيب إعدادات البثّ من `/ping` مرة واحدة ويحتفظ بها.
///
/// `null` معناها **البثّ مطفي أو غير متاح** → نرجع للـ polling على
/// `/auctions/{id}/price` و`/auctions/{id}/bids`. مفيش أي قيم hardcoded،
/// فمافيش حالة إن التطبيق يحاول يتصل بمفتاح وهمي ويفضل يعيد المحاولة.
@lazySingleton
class RealtimeConfigProvider {
  final ApiClient _client;
  RealtimeConfigProvider(this._client);

  RealtimeConfig? _cached;
  bool _fetched = false;

  /// الإعدادات المحمّلة — `null` لو البثّ مش متاح.
  /// بتتجاب مرة واحدة؛ الفشل بيتعامل معاه كـ «مش متاح» بدل ما يرمي.
  Future<RealtimeConfig?> load() async {
    if (_fetched) return _cached;
    _fetched = true;

    try {
      final data = await _client.get(ApiConstants.ping);
      if (data is! Map) return null;
      final realtime = data['realtime'];
      if (realtime is! Map) return null; // البثّ مطفي على السيرفر
      _cached = RealtimeConfig.fromJson(Map<String, dynamic>.from(realtime));
    } catch (_) {
      _cached = null; // /ping مش موصول — الـ polling بيغطّي
    }
    return _cached;
  }

  /// إعادة المحاولة (مثلًا بعد رجوع الاتصال).
  void invalidate() {
    _fetched = false;
    _cached = null;
  }
}
