import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/profile.dart';
import '../cubit/profile_cubit.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info_card.dart';
import '../widgets/profile_language_switcher.dart';
import '../widgets/profile_logout_button.dart';

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
            ProfileLoaded(:final profile) => _ProfileContent(profile: profile),
          };
        },
      ),
    );
  }
}

class _ProfileContent extends StatelessWidget {
  final Profile profile;
  const _ProfileContent({required this.profile});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfileHeader(profile: profile),
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                ProfileInfoCard(
                  rows: [
                    ProfileInfoRow(
                      icon: Icons.badge_outlined,
                      label: t.nin,
                      value: profile.ninMasked ?? '—',
                    ),
                    ProfileInfoRow(
                      icon: Icons.phone_outlined,
                      label: t.phone,
                      value: profile.phone ?? '—',
                    ),
                    ProfileInfoRow(
                      icon: Icons.mail_outline,
                      label: t.email,
                      value: profile.email ?? '—',
                    ),
                    // الـ API مبيرجّعش اسم ولاية — العنوان النصي هو الحقل الحقيقي.
                    if (profile.address?.isNotEmpty ?? false)
                      ProfileInfoRow(
                        icon: Icons.location_on_outlined,
                        label: t.address,
                        value: profile.address!,
                      ),
                  ],
                ),
                Gap(16.h),
                _ProfileNavRow(
                  icon: Icons.folder_outlined,
                  label: AppLocalizations.of(context).docsTitle,
                  onTap: () => context.push(Routes.documents),
                ),
                Gap(10.h),
                // مدخل السجل التجاري — عشان المستخدم يقدر يقدّمه استباقيًا
                // بدل ما يكتشفه لما يصطدم بمزاد بيتطلبه.
                _ProfileNavRow(
                  icon: Icons.store_outlined,
                  label: AppLocalizations.of(context).crTitle,
                  trailing: profile.hasCommerceRegister
                      ? Icon(
                          Icons.verified,
                          size: 17.sp,
                          color: AppColors.success,
                        )
                      : null,
                  onTap: () => context.push(Routes.commercialRegister),
                ),
                Gap(16.h),
                const ProfileLanguageSwitcher(),
                Gap(16.h),
                ProfileLogoutButton(
                  onPressed: () => context.read<ProfileCubit>().logout(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// صف تنقّل في البروفايل — أيقونة + عنوان + سهم.
class _ProfileNavRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget? trailing;
  final VoidCallback onTap;

  const _ProfileNavRow({
    required this.icon,
    required this.label,
    required this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(13.r),
      child: Container(
        padding: EdgeInsets.all(14.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(13.r),
          border: Border.all(color: AppColors.border, width: 0.5),
        ),
        child: Row(
          children: [
            Icon(icon, size: 19.sp, color: AppColors.primary),
            Gap(10.w),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            if (trailing != null) ...[trailing!, Gap(6.w)],
            Icon(
              Icons.chevron_left,
              size: 19.sp,
              color: AppColors.borderStrong,
            ),
          ],
        ),
      ),
    );
  }
}
