import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

/// تخزين آمن للتوكنات (access + refresh) باستخدام flutter_secure_storage.
/// الـ access قصير العمر، والـ refresh نستخدمه للتجديد.
@lazySingleton
class TokenStorage {
  final FlutterSecureStorage _storage;

  TokenStorage(this._storage);

  static const _kAccess = 'access_token';
  static const _kRefresh = 'refresh_token';

  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await _storage.write(key: _kAccess, value: accessToken);
    await _storage.write(key: _kRefresh, value: refreshToken);
  }

  Future<String?> get accessToken => _storage.read(key: _kAccess);
  Future<String?> get refreshToken => _storage.read(key: _kRefresh);

  Future<bool> get hasTokens async => (await accessToken) != null;

  Future<void> clear() async {
    await _storage.delete(key: _kAccess);
    await _storage.delete(key: _kRefresh);
  }
}
