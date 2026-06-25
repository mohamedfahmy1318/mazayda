import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/profile.dart';
import 'profile_kyc_badge.dart';

/// رأس صفحة الملف الشخصي — صورة الحرف الأول + الاسم + شارة الـ KYC.
class ProfileHeader extends StatelessWidget {
  final Profile profile;
  const ProfileHeader({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(vertical: 22.h),
      child: Column(
        children: [
          CircleAvatar(
            radius: 38.r,
            backgroundColor: AppColors.background,
            child: Text(
              profile.fullName.isNotEmpty
                  ? profile.fullName.characters.first
                  : '?',
              style: TextStyle(
                fontSize: 26.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
              ),
            ),
          ),
          Gap(10.h),
          Text(
            profile.fullName,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Gap(6.h),
          ProfileKycBadge(profile.kycStatus),
        ],
      ),
    );
  }
}
