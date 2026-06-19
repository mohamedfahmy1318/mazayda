import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

/// يدير لغة التطبيق وقت التشغيل ويحفظ الاختيار.
@lazySingleton
class LocaleCubit extends Cubit<Locale> {
  final FlutterSecureStorage _storage;
  static const _key = 'app_locale';

  LocaleCubit(this._storage) : super(const Locale('ar'));

  /// تحميل اللغة المحفوظة عند بدء التطبيق.
  Future<void> loadSaved() async {
    final code = await _storage.read(key: _key);
    if (code != null) emit(Locale(code));
  }

  /// تغيير اللغة وحفظها.
  Future<void> setLocale(String languageCode) async {
    await _storage.write(key: _key, value: languageCode);
    emit(Locale(languageCode));
  }

  /// هل اللغة الحالية RTL؟ (عربي فقط)
  bool get isRtl => state.languageCode == 'ar';
}
