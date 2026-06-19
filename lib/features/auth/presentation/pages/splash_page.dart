import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../domain/repositories/auth_repository.dart';

/// شاشة البداية — تفحص لو فيه جلسة محفوظة وتوجّه المستخدم.
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _decide();
  }

  Future<void> _decide() async {
    await Future.delayed(const Duration(milliseconds: 800));
    final hasSession = await getIt<AuthRepository>().hasSession();
    if (!mounted) return;
    context.go(hasSession ? Routes.home : Routes.login);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 96.w,
              height: 96.w,
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(28.r),
              ),
              clipBehavior: Clip.antiAlias,
              // اللوجو من assets — لو الملف لسه مش متحط، يظهر أيقونة بديلة
              child: Image.asset(
                AppAssets.logo,
                fit: BoxFit.contain,
                errorBuilder: (_, _, _) =>
                    Icon(Icons.gavel, size: 52.sp, color: AppColors.primary),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              t.appName,
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              t.splashTagline,
              style: TextStyle(fontSize: 13.sp, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
