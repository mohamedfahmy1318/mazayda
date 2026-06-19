import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../constants/app_colors.dart';
import '../connectivity_cubit.dart';

/// يلفّ التطبيق ويعرض شريطًا أعلى الشاشة عند انقطاع/عودة الاتصال.
/// - أحمر ثابت أثناء انقطاع الاتصال.
/// - أخضر مؤقّت (ثانيتان) عند عودة الاتصال ثم يختفي.
class ConnectivityBanner extends StatefulWidget {
  final Widget child;
  const ConnectivityBanner({super.key, required this.child});

  @override
  State<ConnectivityBanner> createState() => _ConnectivityBannerState();
}

class _ConnectivityBannerState extends State<ConnectivityBanner> {
  bool _showBackOnline = false;
  Timer? _backOnlineTimer;

  @override
  void dispose() {
    _backOnlineTimer?.cancel();
    super.dispose();
  }

  /// أظهر ومضة "تم استعادة الاتصال" ثانيتين ثم أخفِها.
  /// نستخدم Timer قابل للإلغاء بدل Future.delayed حتى لا تبقى الومضة معلّقة
  /// لو تغيّرت الحالة بسرعة (online → offline → online).
  void _flashBackOnline() {
    _backOnlineTimer?.cancel();
    setState(() => _showBackOnline = true);
    _backOnlineTimer = Timer(const Duration(seconds: 2), () {
      if (mounted) setState(() => _showBackOnline = false);
    });
  }

  void _hideBackOnline() {
    _backOnlineTimer?.cancel();
    if (_showBackOnline) setState(() => _showBackOnline = false);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return BlocListener<ConnectivityCubit, ConnectivityStatus>(
      listenWhen: (prev, curr) => prev != curr,
      listener: (context, status) {
        if (status == ConnectivityStatus.online) {
          // عاد الاتصال (من offline) → ومضة خضراء مؤقّتة
          _flashBackOnline();
        } else {
          // انقطع مجددًا → ألغِ الومضة فورًا وأظهر الأحمر
          _hideBackOnline();
        }
      },
      child: BlocBuilder<ConnectivityCubit, ConnectivityStatus>(
        builder: (context, status) {
          final offline = status == ConnectivityStatus.offline;
          final showBar = offline || _showBackOnline;

          // الارتفاع الكامل للشريط = إدراج شريط الحالة (SafeArea) + ارتفاع المحتوى.
          // نُخفيه بإزاحته بمقدار هذا الارتفاع كاملًا حتى لا تبقى منه شريحة ظاهرة.
          final topInset = MediaQuery.of(context).padding.top;
          final barFullHeight = topInset + 34.h;

          return Stack(
            children: [
              widget.child,
              // الشريط أعلى الشاشة
              AnimatedPositioned(
                duration: const Duration(milliseconds: 280),
                curve: Curves.easeOut,
                top: showBar ? 0 : -(barFullHeight + 8),
                left: 0,
                right: 0,
                child: Material(
                  color: Colors.transparent,
                  child: SafeArea(
                    bottom: false,
                    child: Container(
                      height: 34.h,
                      alignment: Alignment.center,
                      color: offline ? AppColors.danger : AppColors.success,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            offline ? Icons.wifi_off : Icons.wifi,
                            size: 15.sp,
                            color: Colors.white,
                          ),
                          SizedBox(width: 7.w),
                          Text(
                            offline ? t.offlineBanner : t.backOnline,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
