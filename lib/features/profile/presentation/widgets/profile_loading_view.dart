import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/constants/app_colors.dart';

/// Skeleton يحافظ على شكل صفحة الحساب بدل مؤشر تحميل منفصل عن التصميم.
class ProfileLoadingView extends StatelessWidget {
  const ProfileLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.paddingOf(context).top;
    final base = AppColors.border.withValues(alpha: 0.72);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
      child: Column(
        children: [
          Container(
            height: topInset + 190.h,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(18.w, topInset + 18.h, 18.w, 22.h),
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
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(28.r),
              ),
            ),
            child: Shimmer.fromColors(
              baseColor: AppColors.white.withValues(alpha: 0.13),
              highlightColor: AppColors.white.withValues(alpha: 0.28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _SkeletonBox(width: 128.w, height: 35.h, radius: 12.r),
                  const Spacer(),
                  Row(
                    children: [
                      _SkeletonBox(width: 82.w, height: 82.w, radius: 41.r),
                      Gap(14.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _SkeletonBox(width: 176.w, height: 17.h, radius: 7.r),
                          Gap(9.h),
                          _SkeletonBox(width: 132.w, height: 10.h, radius: 6.r),
                          Gap(9.h),
                          _SkeletonBox(
                            width: 110.w,
                            height: 22.h,
                            radius: 11.r,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Shimmer.fromColors(
              baseColor: base,
              highlightColor: AppColors.white,
              period: const Duration(milliseconds: 1250),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(16.w),
                children: [
                  _SkeletonBox(width: 110.w, height: 14.h, radius: 7.r),
                  Gap(11.h),
                  _SkeletonBox(
                    width: double.infinity,
                    height: 198.h,
                    radius: 18.r,
                  ),
                  Gap(14.h),
                  _SkeletonBox(
                    width: double.infinity,
                    height: 116.h,
                    radius: 18.r,
                  ),
                  Gap(14.h),
                  _SkeletonBox(
                    width: double.infinity,
                    height: 112.h,
                    radius: 18.r,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SkeletonBox extends StatelessWidget {
  final double width;
  final double height;
  final double radius;

  const _SkeletonBox({
    required this.width,
    required this.height,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
