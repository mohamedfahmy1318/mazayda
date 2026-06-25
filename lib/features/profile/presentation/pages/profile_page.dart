import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
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
                    if (profile.wilayaName != null)
                      ProfileInfoRow(
                        icon: Icons.location_on_outlined,
                        label: t.address,
                        value: profile.wilayaName!,
                      ),
                  ],
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
