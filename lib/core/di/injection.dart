import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

/// نقطة تهيئة الـ DI — تُستدعى مرة في main() قبل runApp.
/// injectable بيولّد injection.config.dart اللي فيه كل التسجيلات.
@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async => getIt.init();

/// تسجيل الـ dependencies الخارجية (مش بتاعتنا) عشان injectable يقدر يحقنها.
@module
abstract class RegisterModule {
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  Connectivity get connectivity => Connectivity();
}
