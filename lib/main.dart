import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'core/di/injection.dart';
import 'core/connectivity/connectivity_cubit.dart';
import 'core/connectivity/widgets/connectivity_banner.dart';
import 'core/notifications/push_notification_service.dart';
import 'core/router/app_router.dart';
import 'core/session/session_manager.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/locale_cubit.dart';

/// معالج رسائل FCM في الخلفية — لازم يكون top-level (شرط Firebase).
@pragma('vm:entry-point')
Future<void> _firebaseBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  // الرسائل في الخلفية يعرضها النظام تلقائيًا؛ هنا للمعالجة الإضافية فقط.
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // تهيئة Firebase + معالج الخلفية.
  // اختيارية: لو إعدادات Firebase (google-services.json) غير موجودة،
  // نكمل تشغيل التطبيق بدون Push بدل ما يكرّش عند الإقلاع.
  bool firebaseReady = false;
  try {
    await Firebase.initializeApp();
    FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundHandler);
    firebaseReady = true;
  } catch (e) {
    debugPrint('⚠️ Firebase غير مُهيّأ — سيتم تعطيل الإشعارات. السبب: $e');
  }

  await configureDependencies();
  // حمّل اللغة المحفوظة قبل التشغيل
  await getIt<LocaleCubit>().loadSaved();

  // تهيئة الـ push notifications — فقط لو Firebase جاهز
  if (firebaseReady) {
    try {
      await getIt<PushNotificationService>().init();
    } catch (e) {
      debugPrint('⚠️ تعذّر تهيئة خدمة الإشعارات: $e');
    }
  }

  runApp(const MazayadaApp());
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
        builder: (context, locale) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return MaterialApp.router(
                title: 'Mazayada',
                debugShowCheckedModeBanner: false,
                theme: AppTheme.light,
                routerConfig: _router,
                // شريط حالة الاتصال يلفّ كل الشاشات
                builder: (context, child) =>
                    ConnectivityBanner(child: child ?? const SizedBox()),
                // الترجمة الكاملة
                locale: locale,
                supportedLocales: const [
                  Locale('ar'),
                  Locale('fr'),
                  Locale('en'),
                ],
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                // الاتجاه يتحدّد تلقائيًا حسب اللغة (عربي = RTL، غيره = LTR)
              );
            },
          );
        },
      ),
    );
  }
}
