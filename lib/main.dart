import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'core/di/injection.dart';
import 'core/connectivity/connectivity_cubit.dart';
import 'core/connectivity/widgets/connectivity_banner.dart';
import 'core/notifications/device_registrar.dart';
import 'core/notifications/push_notification_service.dart';
import 'core/router/app_router.dart';
import 'core/session/session_manager.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/locale_cubit.dart';

/// مقاس التصميم المرجعي لـ flutter_screenutil.
const _designSize = Size(375, 812);

/// اللغات المدعومة — الاتجاه (RTL/LTR) يتحدّد تلقائيًا حسب اللغة.
const _supportedLocales = [Locale('ar'), Locale('fr'), Locale('en')];

/// معالج رسائل FCM في الخلفية — لازم يكون top-level (شرط Firebase).
@pragma('vm:entry-point')
Future<void> _firebaseBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  // الرسائل في الخلفية يعرضها النظام تلقائيًا؛ هنا للمعالجة الإضافية فقط.
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final firebaseReady = await _initFirebase();

  await configureDependencies();
  // حمّل اللغة المحفوظة قبل التشغيل
  await getIt<LocaleCubit>().loadSaved();

  // الإشعارات تعتمد على Firebase — نهيّئها فقط لو جاهز
  if (firebaseReady) await _initPushNotifications();

  runApp(const MazayadaApp());
}

/// تهيئة Firebase + معالج الخلفية.
/// اختيارية: لو إعدادات Firebase (google-services.json) غير موجودة،
/// نكمل تشغيل التطبيق بدون Push بدل ما يكرّش عند الإقلاع.
Future<bool> _initFirebase() async {
  try {
    await Firebase.initializeApp();
    FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundHandler);
    return true;
  } catch (e) {
    debugPrint('⚠️ Firebase غير مُهيّأ — سيتم تعطيل الإشعارات. السبب: $e');
    return false;
  }
}

/// تهيئة خدمة الـ push notifications (بعد التأكد إن Firebase جاهز).
///
/// وبعدها ربط الجهاز بالحساب (BE-11): التسجيل idempotent، والمفروض يتنادى
/// **كل إقلاع** مش بعد اللوجين بس — جلسة محفوظة من تشغيل قديم مش هيكون
/// جهازها مسجّل لو الربط اتعمل قبل ما الـ endpoint ينزل، أو لو الـ FCM
/// token اتدوّر والتطبيق مقفول.
Future<void> _initPushNotifications() async {
  try {
    await getIt<PushNotificationService>().init();

    final registrar = getIt<DeviceRegistrar>();
    await registrar.registerIfAuthenticated();
    registrar.watchTokenRefresh();
  } catch (e) {
    debugPrint('⚠️ تعذّر تهيئة خدمة الإشعارات: $e');
  }
}

class MazayadaApp extends StatefulWidget {
  const MazayadaApp({super.key});

  @override
  State<MazayadaApp> createState() => _MazayadaAppState();
}

class _MazayadaAppState extends State<MazayadaApp> {
  // نبني الـ router مرة واحدة (مش في كل rebuild) مع SessionManager
  late final _router = createRouter(getIt<SessionManager>());

  @override
  Widget build(BuildContext context) {
    // نوفّر الـ Cubits على مستوى التطبيق (اللغة + الاتصال)
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt<LocaleCubit>()),
        BlocProvider.value(value: getIt<ConnectivityCubit>()),
      ],
      child: BlocBuilder<LocaleCubit, Locale>(
        builder: (context, locale) => ScreenUtilInit(
          designSize: _designSize,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, __) => _buildApp(locale),
        ),
      ),
    );
  }

  Widget _buildApp(Locale locale) {
    return MaterialApp.router(
      onGenerateTitle: (context) => AppLocalizations.of(context).appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: _router,
      // شريط حالة الاتصال يلفّ كل الشاشات
      builder: (context, child) =>
          ConnectivityBanner(child: child ?? const SizedBox()),
      locale: locale,
      supportedLocales: _supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
    );
  }
}
