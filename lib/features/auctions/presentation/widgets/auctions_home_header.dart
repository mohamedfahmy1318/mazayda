import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import 'auction_search_field.dart';

/// الهيدر البصري للصفحة الرئيسية: هوية المنصة + دعوة واضحة للاستكشاف + البحث.
class AuctionsHomeHeader extends StatelessWidget {
  final TextEditingController searchController;
  final bool hasSearchText;
  final ValueChanged<String> onSearchChanged;
  final VoidCallback onClearSearch;
  final VoidCallback onNotificationsTap;

  const AuctionsHomeHeader({
    super.key,
    required this.searchController,
    required this.hasSearchText,
    required this.onSearchChanged,
    required this.onClearSearch,
    required this.onNotificationsTap,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final topInset = MediaQuery.paddingOf(context).top;
    final reduceMotion = MediaQuery.disableAnimationsOf(context);

    Widget ornament = Container(
      width: 150.w,
      height: 150.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.white.withValues(alpha: 0.08),
          width: 28.w,
        ),
      ),
    );

    if (!reduceMotion) {
      ornament = ornament
          .animate(onPlay: (controller) => controller.repeat(reverse: true))
          .moveY(begin: -5, end: 5, duration: 3200.ms, curve: Curves.easeInOut);
    }

    final header = Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [
            AppColors.primaryDeep,
            AppColors.primary,
            AppColors.primarySoft,
          ],
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(28.r)),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.20),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          PositionedDirectional(
            top: topInset + 42.h,
            end: -44.w,
            child: ornament,
          ),
          PositionedDirectional(
            top: -42.h,
            start: -54.w,
            child: Container(
              width: 136.w,
              height: 136.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.gold.withValues(alpha: 0.08),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18.w, topInset + 10.h, 18.w, 22.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 42.w,
                      height: 42.w,
                      decoration: BoxDecoration(
                        color: AppColors.white.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(14.r),
                        border: Border.all(
                          color: AppColors.white.withValues(alpha: 0.14),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.gavel_rounded,
                        color: AppColors.gold,
                        size: 23.sp,
                      ),
                    ),
                    Gap(10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            t.appName,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w800,
                              height: 1.15,
                            ),
                          ),
                          Gap(2.h),
                          Text(
                            t.auctionsTitle,
                            style: TextStyle(
                              color: AppColors.white.withValues(alpha: 0.64),
                              fontSize: 10.5.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    _HeaderAction(
                      icon: Icons.notifications_none_rounded,
                      tooltip: t.notifications,
                      onTap: onNotificationsTap,
                    ),
                  ],
                ),
                Gap(22.h),
                Text(
                  t.activeAuctions,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 24.sp,
                    height: 1.2,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.3,
                  ),
                ),
                Gap(5.h),
                Text(
                  t.splashTagline,
                  style: TextStyle(
                    color: AppColors.white.withValues(alpha: 0.72),
                    fontSize: 11.5.sp,
                    height: 1.45,
                  ),
                ),
                Gap(17.h),
                AuctionSearchField(
                  controller: searchController,
                  hasText: hasSearchText,
                  onChanged: onSearchChanged,
                  onClear: onClearSearch,
                  padding: EdgeInsets.zero,
                  fillColor: AppColors.white,
                  showShadow: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final styledHeader = AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
      child: header,
    );

    if (reduceMotion) return styledHeader;
    return styledHeader
        .animate()
        .fadeIn(duration: 420.ms)
        .slideY(
          begin: -0.025,
          end: 0,
          duration: 520.ms,
          curve: Curves.easeOutCubic,
        );
  }
}

class _HeaderAction extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  const _HeaderAction({
    required this.icon,
    required this.tooltip,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Material(
        color: AppColors.white.withValues(alpha: 0.11),
        borderRadius: BorderRadius.circular(14.r),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(14.r),
          child: SizedBox(
            width: 42.w,
            height: 42.w,
            child: Icon(icon, color: AppColors.white, size: 22.sp),
          ),
        ),
      ),
    );
  }
}
