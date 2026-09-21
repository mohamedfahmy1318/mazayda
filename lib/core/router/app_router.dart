import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../session/session_manager.dart';
import '../widgets/shell/main_shell.dart';
import 'go_router_refresh_stream.dart';
import '../../features/auth/presentation/pages/splash_page.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/auth/presentation/pages/otp_page.dart';
import '../../features/auth/presentation/cubit/password_recovery_cubit.dart';
import '../../features/auth/presentation/pages/password_recovery_page.dart';
import '../../features/auth/presentation/pages/email_recovery_page.dart';
import '../../features/auctions/presentation/pages/auctions_page.dart';
import '../../features/auctions/presentation/pages/auction_detail_page.dart';
import '../../features/bidding/presentation/pages/live_bidding_page.dart';
import '../../features/kyc/presentation/pages/kyc_page.dart';
import '../../features/my_auctions/presentation/pages/my_auctions_page.dart';
import '../../features/notifications/presentation/pages/notifications_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/appeals/presentation/pages/appeals_page.dart';
import '../../features/commercial_register/presentation/pages/commercial_register_page.dart';
import '../../features/documents/presentation/pages/documents_page.dart';
import '../../features/qa/presentation/pages/qa_page.dart';
import '../../features/premium/presentation/pages/premium_page.dart';
import '../../features/notifications/presentation/pages/notification_preferences_page.dart';

/// أسماء المسارات — مركزية لتجنّب الأخطاء الإملائية.
class Routes {
  Routes._();
  static const splash = '/';
  static const login = '/login';
  static const register = '/register';
  static const otp = '/otp';
  static const forgotPassword = '/forgot-password';
  static const recoverAccount = '/recover-account';
  /// استرجاع البريد الإلكتروني المفقود (تعديل العميل رقم 1) — خارج الجلسة.
  static const recoverEmail = '/recover-email';
  // تبويبات الـ Bottom Navigation
  static const home = '/home';
  static const myAuctions = '/my-auctions';
  static const notifications = '/notifications';
  static const profile = '/profile';
  // شاشات تُفتح فوق الشريط (full screen)
  static const auctionDetail = '/auction'; // /auction/:id
  static const liveBidding = '/bidding'; // /bidding/:id
  static const kyc = '/kyc';
  static const commercialRegister = '/commercial-register';
  static const documents = '/documents';
  static const appeals = '/appeals';
  static const qa = '/qa'; // /qa/:id
  /// العضوية المميّزة — الاشتراك وإدارته (تعديلات العميل 24 · 25).
  static const premium = '/premium';
  /// تفضيلات الإشعارات وأنواع المزايدات المفضّلة (تعديلات 27 · 28 · 30).
  static const notificationPreferences = '/notification-preferences';
}

// مفاتيح الـ navigators: جذر + فرع لكل تبويب
final _rootKey = GlobalKey<NavigatorState>();
final _shellHomeKey = GlobalKey<NavigatorState>();
final _shellMyAuctionsKey = GlobalKey<NavigatorState>();
final _shellNotificationsKey = GlobalKey<NavigatorState>();
final _shellProfileKey = GlobalKey<NavigatorState>();

/// ينشئ الـ go_router مع:
/// - الحماية: توجيه تلقائي لـ login عند انتهاء الجلسة.
/// - StatefulShellRoute: bottom navigation يحفظ حالة كل تبويب.
GoRouter createRouter(SessionManager session) {
  return GoRouter(
    navigatorKey: _rootKey,
    initialLocation: Routes.splash,
    refreshListenable: GoRouterRefreshStream(session.onSessionExpired),
    redirect: (context, state) {
      final authPaths = {
        Routes.login,
        Routes.register,
        Routes.splash,
        Routes.forgotPassword,
        Routes.recoverAccount,
        // استرجاع البريد مسار خارج الجلسة — لو الجلسة انتهت والمستخدم
        // فاتحه، ما ينفعش نرميه على login وهو في نص الطلب.
        Routes.recoverEmail,
      };
      final inAuthFlow = authPaths.contains(state.matchedLocation) ||
          state.matchedLocation.startsWith(Routes.otp);
      if (session.isExpired && !inAuthFlow) {
        session.reset();
        return Routes.login;
      }
      return null;
    },
    routes: [
      // ===== شاشات خارج الـ shell (بدون bottom bar) =====
      GoRoute(
        path: Routes.splash,
        builder: (_, _) => const SplashPage(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (_, _) => const LoginPage(),
      ),
      GoRoute(
        path: Routes.forgotPassword,
        builder: (_, _) =>
            const PasswordRecoveryPage(mode: RecoveryMode.otp),
      ),
      GoRoute(
        path: Routes.recoverAccount,
        builder: (_, _) =>
            const PasswordRecoveryPage(mode: RecoveryMode.secretQuestion),
      ),
      GoRoute(
        path: Routes.recoverEmail,
        builder: (_, _) => const EmailRecoveryPage(),
      ),
      GoRoute(
        path: Routes.register,
        builder: (_, _) => const RegisterPage(),
      ),
      GoRoute(
        path: '${Routes.otp}/:userId',
        builder: (_, state) =>
            OtpPage(userId: state.pathParameters['userId'] ?? ''),
      ),

      // ===== شاشات تُفتح فوق الشريط (root navigator، full screen) =====
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: '${Routes.auctionDetail}/:id',
        builder: (_, state) =>
            AuctionDetailPage(auctionId: state.pathParameters['id'] ?? ''),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: Routes.premium,
        builder: (_, _) => const PremiumPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: Routes.notificationPreferences,
        builder: (_, _) => const NotificationPreferencesPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: '${Routes.liveBidding}/:id',
        builder: (_, state) {
          final extra = state.extra as Map<String, String>?;
          return LiveBiddingPage(
            auctionId: state.pathParameters['id'] ?? '',
            title: extra?['title'] ?? '',
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: Routes.kyc,
        builder: (_, _) => const KycPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: Routes.commercialRegister,
        builder: (_, _) => const CommercialRegisterPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: Routes.documents,
        builder: (_, _) => const DocumentsPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: Routes.appeals,
        builder: (_, _) => const AppealsPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: '${Routes.qa}/:id',
        builder: (_, state) =>
            QaPage(auctionId: state.pathParameters['id'] ?? ''),
      ),

      // ===== الـ Bottom Navigation Shell (4 تبويبات) =====
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => MainShell(shell: shell),
        branches: [
          // التبويب 1: الرئيسية
          StatefulShellBranch(
            navigatorKey: _shellHomeKey,
            routes: [
              GoRoute(
                path: Routes.home,
                builder: (_, _) => const AuctionsPage(),
              ),
            ],
          ),
          // التبويب 2: مزايداتي
          StatefulShellBranch(
            navigatorKey: _shellMyAuctionsKey,
            routes: [
              GoRoute(
                path: Routes.myAuctions,
                builder: (_, _) => const MyAuctionsPage(),
              ),
            ],
          ),
          // التبويب 3: الإشعارات
          StatefulShellBranch(
            navigatorKey: _shellNotificationsKey,
            routes: [
              GoRoute(
                path: Routes.notifications,
                builder: (_, _) => const NotificationsPage(),
              ),
            ],
          ),
          // التبويب 4: حسابي
          StatefulShellBranch(
            navigatorKey: _shellProfileKey,
            routes: [
              GoRoute(
                path: Routes.profile,
                builder: (_, _) => const ProfilePage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
