import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
import '../network/token_storage.dart';
import 'realtime_config.dart';
import 'realtime_service.dart';

/// تطبيق الـ realtime عبر بروتوكول Pusher — السيرفر Reverb مستضاف بنفسه.
///
/// الإعدادات بتتقرا وقت التشغيل من `/ping` (BE-14) مش من ثوابت في الكود:
/// مفيش مفتاح ولا host مكتوب هنا، وتغيير البيئة على السيرفر بيوصل للتطبيق
/// من غير إصدار جديد.
///
/// لو الإعدادات مش متاحة (البثّ مطفي، أو `/ping` مش موصول) الاتصال بيفشل
/// **بهدوء** والـ features بترجع للـ polling.
@LazySingleton(as: RealtimeService)
class PusherRealtimeService implements RealtimeService {
  final RealtimeConfigProvider _configProvider;
  final TokenStorage _tokenStorage;

  PusherRealtimeService(this._configProvider, this._tokenStorage);

  final PusherChannelsFlutter _pusher = PusherChannelsFlutter.getInstance();

  bool _connected = false;
  // نحتفظ بالـ callbacks لكل قناة لتمريرها للحدث الصحيح
  final Map<String, void Function(String, Map<String, dynamic>)> _handlers = {};

  @override
  Future<void> connect() async {
    if (_connected) return;

    final config = await _configProvider.load();
    if (config == null || !config.isUsable) {
      // البثّ مطفي على السيرفر أو `/ping` مش موصول.
      throw StateError('realtime unavailable');
    }
    if (!config.supportedByClient) {
      // الحزمة الحالية مش قادرة توصل لسيرفر مستضاف بنفسه — التفصيلة
      // كلها في `RealtimeConfig.supportedByClient`.
      throw StateError('realtime client cannot reach ${config.socketUrl}');
    }

    await _pusher.init(
      apiKey: config.key,
      cluster: '',
      useTLS: config.useTls,
      // تصريح القنوات الخاصة (BE-10) — مسار الـ API بالتوكن.
      authEndpoint: config.authEndpoint,
      onAuthorizer: _authorize,
      onEvent: _onEvent,
    );
    await _pusher.connect();
    _connected = true;
  }

  /// تصريح قناة خاصة: الباك بيتوقّع `Authorization: Bearer <access token>`
  /// على `POST /api/broadcasting/auth` (مش كوكي جلسة).
  Future<Map<String, String>> _authorize(
    String channelName,
    String socketId,
    dynamic options,
  ) async {
    final token = await _tokenStorage.accessToken;
    return {
      if (token != null) 'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };
  }

  void _onEvent(PusherEvent event) {
    final handler = _handlers[event.channelName];
    if (handler == null) return;
    Map<String, dynamic> data = {};
    try {
      if (event.data is String && (event.data as String).isNotEmpty) {
        data = jsonDecode(event.data as String) as Map<String, dynamic>;
      } else if (event.data is Map) {
        data = Map<String, dynamic>.from(event.data as Map);
      }
    } catch (_) {
      // لو الـ payload مش JSON صالح، نمرّر فاضي
    }
    handler(event.eventName, data);
  }

  @override
  Future<void> subscribe(
    String channelName, {
    required void Function(String event, Map<String, dynamic> data) onEvent,
  }) async {
    await connect(); // تأكّد من الاتصال أولًا
    _handlers[channelName] = onEvent;
    await _pusher.subscribe(channelName: channelName);
  }

  @override
  Future<void> unsubscribe(String channelName) async {
    _handlers.remove(channelName);
    if (!_connected) return;
    await _pusher.unsubscribe(channelName: channelName);
  }

  @override
  Future<void> disconnect() async {
    _handlers.clear();
    if (!_connected) return;
    await _pusher.disconnect();
    _connected = false;
  }
}
