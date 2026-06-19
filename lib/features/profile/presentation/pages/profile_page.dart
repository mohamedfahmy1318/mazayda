import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/utils/locale_cubit.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/profile.dart';
import '../cubit/profile_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileCubit>()..load(),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(t.profile)),
      body: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          if (state is ProfileLoggedOut) {
            context.go(Routes.login);
          }
        },
        builder: (context, state) {
          return switch (state) {
            ProfileLoading() => const LoadingView(),
            ProfileError(:final message) => ErrorView(
                message: message,
                onRetry: () => context.read<ProfileCubit>().load(),
              ),
            ProfileLoggedOut() => const LoadingView(),
            ProfileLoaded(:final profile) =>
              _content(context, t, profile),
          };
        },
      ),
    );
  }

  Widget _content(BuildContext context, AppLocalizations t, Profile profile) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // الرأس
          Container(
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
                        color: AppColors.primary),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(profile.fullName,
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                SizedBox(height: 6.h),
                if (profile.isVerified)
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: AppColors.successBg,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.verified,
                            size: 14.sp, color: AppColors.success),
                        SizedBox(width: 5.w),
                        Text(t.verifiedKyc,
                            style: TextStyle(
                                fontSize: 11.sp,
                                color: AppColors.success)),
                      ],
                    ),
                  )
                else
                  GestureDetector(
                    onTap: () => context.push(Routes.kyc),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: AppColors.warningBg,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.warning_amber_rounded,
                              size: 14.sp, color: AppColors.warning),
                          SizedBox(width: 5.w),
                          Text('أكمل التحقق من الهوية',
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: AppColors.warning)),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                // البيانات (قراءة فقط للهوية)
                _infoCard([
                  _row(Icons.badge_outlined, t.nin, profile.ninMasked ?? '—'),
                  _row(Icons.phone_outlined, t.phone, profile.phone ?? '—'),
                  _row(Icons.mail_outline, t.email, profile.email ?? '—'),
                  if (profile.wilayaName != null)
                    _row(Icons.location_on_outlined, t.address,
                        profile.wilayaName!),
                ]),
                SizedBox(height: 16.h),
                // مبدّل اللغة
                _languageSwitcher(context, t),
                SizedBox(height: 16.h),
                // الخروج
                SizedBox(
                  width: double.infinity,
                  height: 48.h,
                  child: OutlinedButton.icon(
                    onPressed: () =>
                        context.read<ProfileCubit>().logout(),
                    icon: Icon(Icons.logout,
                        size: 19.sp, color: AppColors.danger),
                    label: Text(t.logout,
                        style: TextStyle(
                            fontSize: 15.sp, color: AppColors.danger)),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.danger),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.r)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _languageSwitcher(BuildContext context, AppLocalizations t) {
    final localeCubit = getIt<LocaleCubit>();
    return Container(
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: AppColors.border, width: 0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.language, size: 19.sp, color: AppColors.primary),
              SizedBox(width: 8.w),
              Text(t.language,
                  style: TextStyle(
                      fontSize: 13.sp, fontWeight: FontWeight.w500)),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              _langChip(localeCubit, 'ar', t.languageArabic),
              SizedBox(width: 8.w),
              _langChip(localeCubit, 'fr', t.languageFrench),
              SizedBox(width: 8.w),
              _langChip(localeCubit, 'en', t.languageEnglish),
            ],
          ),
        ],
      ),
    );
  }

  Widget _langChip(LocaleCubit cubit, String code, String label) {
    return Expanded(
      child: BlocBuilder<LocaleCubit, Locale>(
        bloc: cubit,
        builder: (context, locale) {
          final selected = locale.languageCode == code;
          return GestureDetector(
            onTap: () => cubit.setLocale(code),
            child: Container(
              height: 40.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: selected ? AppColors.primary : AppColors.white,
                borderRadius: BorderRadius.circular(11.r),
                border: Border.all(color: AppColors.primary, width: 0.8),
              ),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: selected ? Colors.white : AppColors.primary,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _infoCard(List<Widget> rows) => Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: AppColors.border, width: 0.5),
        ),
        child: Column(children: rows),
      );

  Widget _row(IconData icon, String label, String value) => Padding(
        padding: EdgeInsets.symmetric(vertical: 11.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // الـ label قد يطول (خاصة بالفرنسية) → نجعله مرنًا مع ellipsis
            Expanded(
              child: Row(
                children: [
                  Icon(icon, size: 17.sp, color: AppColors.primary),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(label,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 13.sp, color: AppColors.textSecondary)),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8.w),
            Text(value,
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimary)),
          ],
        ),
      );
}
