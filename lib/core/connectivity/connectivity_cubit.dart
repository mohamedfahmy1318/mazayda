import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

/// حالة الاتصال بالإنترنت.
enum ConnectivityStatus { online, offline }

/// يراقب اتصال الجهاز بالشبكة ويبثّ الحالة للتطبيق كله.
@lazySingleton
class ConnectivityCubit extends Cubit<ConnectivityStatus> {
  final Connectivity _connectivity;
  StreamSubscription<List<ConnectivityResult>>? _sub;

  ConnectivityCubit(this._connectivity)
      : super(ConnectivityStatus.online) {
    _init();
  }

  Future<void> _init() async {
    // الحالة الأولية
    final result = await _connectivity.checkConnectivity();
    _emitFrom(result);
    // الاستماع لأي تغيّر
    _sub = _connectivity.onConnectivityChanged.listen(_emitFrom);
  }

  void _emitFrom(List<ConnectivityResult> results) {
    // offline فقط لو مفيش أي نوع اتصال
    final offline = results.isEmpty ||
        results.every((r) => r == ConnectivityResult.none);
    emit(offline ? ConnectivityStatus.offline : ConnectivityStatus.online);
  }

  @override
  Future<void> close() {
    _sub?.cancel();
    return super.close();
  }
}
