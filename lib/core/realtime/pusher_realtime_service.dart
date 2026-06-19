import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
import '../constants/api_constants.dart';
import 'realtime_service.dart';

/// تطبيق الـ realtime عبر Pusher Channels.
@LazySingleton(as: RealtimeService)
class PusherRealtimeService implements RealtimeService {
  final PusherChannelsFlutter _pusher = PusherChannelsFlutter.getInstance();

  bool _connected = false;
  // نحتفظ بالـ callbacks لكل قناة لتمريرها للحدث الصحيح
  final Map<String, void Function(String, Map<String, dynamic>)> _handlers = {};

  @override
  Future<void> connect() async {
    if (_connected) return;
    await _pusher.init(
      apiKey: ApiConstants.pusherKey,
      cluster: ApiConstants.pusherCluster,
      onEvent: _onEvent,
    );
    await _pusher.connect();
    _connected = true;
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
    await _pusher.unsubscribe(channelName: channelName);
  }

  @override
  Future<void> disconnect() async {
    _handlers.clear();
    await _pusher.disconnect();
    _connected = false;
  }
}
