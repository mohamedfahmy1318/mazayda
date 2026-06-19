import 'dart:async';
import 'package:flutter/foundation.dart';

/// يحوّل Stream إلى Listenable ليستخدمه go_router في refreshListenable.
/// كل حدث على الـ stream يُعيد تقييم منطق الـ redirect.
class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<dynamic> _sub;

  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _sub = stream.asBroadcastStream().listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}
