import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/notification_preferences.dart';
import '../cubit/notification_preferences_cubit.dart';

/// إدارة تفضيلات الإشعارات — تعديلات العميل 27 · 28 · 30.
///
/// شاشة واحدة بتجمع القنوات (تطبيق/بريد/SMS) مع أنواع المزايدات المفضّلة،
/// لأن الاتنين مرتبطين: التنبيه بيتبعت على القناة المختارة للنوع المختار.
class NotificationPreferencesPage extends StatelessWidget {
  const NotificationPreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NotificationPreferencesCubit>()..load(),
      child: const _PreferencesView(),
    );
  }
}

class _PreferencesView extends StatelessWidget {
  const _PreferencesView();

  /// تحذير قبل الخروج بتعديلات غير محفوظة — التعديل محلي، فالخروج بيضيّعه.
  Future<bool> _confirmLeave(BuildContext context, bool isDirty) async {
    if (!isDirty) return true;
    final t = AppLocalizations.of(context);
    final leave = await showDialog<bool>(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        content: Text(
          t.prefsDiscardChanges,
          style: TextStyle(fontSize: 12.5.sp, height: 1.7),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogCtx, false),
            child: Text(t.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(dialogCtx, true),
            child: Text(
              t.prefsLeave,
              style: const TextStyle(color: AppColors.danger),
            ),
          ),
        ],
      ),
    );
    return leave ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return BlocConsumer<
      NotificationPreferencesCubit,
      NotificationPreferencesState
    >(
      listenWhen: (a, b) =>
          (b.error != null && a.error != b.error) ||
          (b.justSaved && !a.justSaved),
      listener: (context, state) {
        final messenger = ScaffoldMessenger.of(context);
        if (state.error != null) {
          messenger.showSnackBar(
            SnackBar(
              content: Text(state.error!),
              backgroundColor: AppColors.danger,
            ),
          );
        } else if (state.justSaved) {
          messenger.showSnackBar(
            SnackBar(
              content: Text(t.prefsSaved),
              backgroundColor: AppColors.success,
            ),
          );
        }
      },
      builder: (context, state) {
        final cubit = context.read<NotificationPreferencesCubit>();
        final draft = state.draft;

        return PopScope(
          canPop: !state.isDirty,
          onPopInvokedWithResult: (didPop, _) async {
            if (didPop) return;
            if (!context.mounted) return;
            if (await _confirmLeave(context, state.isDirty) &&
                context.mounted) {
              Navigator.of(context).pop();
            }
          },
          child: Scaffold(
            backgroundColor: AppColors.background,
            appBar: AppBar(title: Text(t.prefsTitle)),
            body: state.loading && draft == null
                ? const LoadingView()
                : draft == null
                ? ErrorView(
                    message: state.error ?? t.errorGeneric,
                    onRetry: cubit.load,
                  )
                : _PreferencesBody(prefs: draft, cubit: cubit),
            bottomNavigationBar: draft == null
                ? null
                : SafeArea(
                    minimum: EdgeInsets.fromLTRB(16.w, 0, 16.w, 12.h),
                    child: PrimaryButton(
                      label: t.prefsSave,
                      icon: Icons.save_outlined,
                      isLoading: state.saving,
                      onPressed: state.isDirty ? cubit.save : null,
                    ),
                  ),
          ),
        );
      },
    );
  }
}

class _PreferencesBody extends StatelessWidget {
  final NotificationPreferences prefs;
  final NotificationPreferencesCubit cubit;

  const _PreferencesBody({required this.prefs, required this.cubit});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return ListView(
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
      children: [
        _SectionCard(
          title: t.prefsChannelsTitle,
          icon: Icons.tune_rounded,
          children: [
            _ToggleRow(
              label: t.prefsChannelPush,
              hint: t.prefsChannelPushHint,
              value: prefs.channels.push,
              onChanged: cubit.togglePush,
            ),
            _ToggleRow(
              label: t.prefsChannelEmail,
              // خيار البريد للمشتركين بس (تعديل 29) — بنعرضه معطّلًا مع
              // السبب بدل ما نخفيه، فالمواطن يعرف إن فيه ميزة ناقصاه.
              hint: prefs.emailLocked
                  ? t.prefsChannelEmailPremiumOnly
                  : t.prefsChannelEmailHint,
              value: prefs.channels.email && !prefs.emailLocked,
              enabled: !prefs.emailLocked,
              onChanged: cubit.toggleEmail,
              trailingAction: prefs.emailLocked
                  ? TextButton(
                      onPressed: () => context.push(Routes.premium),
                      child: Text(
                        t.prefsGoPremium,
                        style: TextStyle(fontSize: 10.5.sp),
                      ),
                    )
                  : null,
            ),
            _ToggleRow(
              label: t.prefsChannelSms,
              value: prefs.channels.sms,
              onChanged: cubit.toggleSms,
            ),
          ],
        ),
        Gap(14.h),
        _SectionCard(
          title: t.prefsNewAuctionAlerts,
          icon: Icons.notifications_active_outlined,
          children: [
            _ToggleRow(
              label: t.prefsNewAuctionAlerts,
              hint: t.prefsNewAuctionAlertsHint,
              value: prefs.newAuctionAlerts,
              onChanged: cubit.toggleNewAuctionAlerts,
            ),
          ],
        ),
        Gap(14.h),
        _SectionCard(
          title: t.prefsCategoriesTitle,
          icon: Icons.category_outlined,
          children: [
            Text(
              t.prefsCategoriesHint,
              style: TextStyle(
                fontSize: 11.sp,
                height: 1.65,
                color: AppColors.textSecondary,
              ),
            ),
            Gap(10.h),
            if (prefs.availableCategories.isEmpty)
              Text(
                t.prefsNoCategories,
                style: TextStyle(fontSize: 11.5.sp, color: AppColors.textHint),
              )
            else
              Wrap(
                spacing: 7.w,
                runSpacing: 7.h,
                children: [
                  _CategoryChip(
                    label: t.prefsCategoriesAll,
                    selected: prefs.categoryIds.isEmpty,
                    onTap: cubit.clearCategories,
                  ),
                  for (final category in prefs.availableCategories)
                    _CategoryChip(
                      label: category.name,
                      selected: prefs.categoryIds.contains(category.id),
                      onTap: () => cubit.toggleCategory(category.id),
                    ),
                ],
              ),
          ],
        ),
      ],
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const _SectionCard({
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 17.sp, color: AppColors.primary),
            Gap(7.w),
            Text(
              title,
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Gap(9.h),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(13.w),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: AppColors.border, width: 0.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ],
    );
  }
}

class _ToggleRow extends StatelessWidget {
  final String label;
  final String? hint;
  final bool value;
  final bool enabled;
  final ValueChanged<bool> onChanged;
  final Widget? trailingAction;

  const _ToggleRow({
    required this.label,
    required this.value,
    required this.onChanged,
    this.hint,
    this.enabled = true,
    this.trailingAction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        fontSize: 12.5.sp,
                        fontWeight: FontWeight.w600,
                        color: enabled
                            ? AppColors.textPrimary
                            : AppColors.textHint,
                      ),
                    ),
                    if (hint != null) ...[
                      Gap(2.h),
                      Text(
                        hint!,
                        style: TextStyle(
                          fontSize: 10.5.sp,
                          height: 1.55,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              Switch.adaptive(
                value: value,
                onChanged: enabled ? onChanged : null,
                activeThumbColor: AppColors.white,
                activeTrackColor: AppColors.primary,
              ),
            ],
          ),
          if (trailingAction != null)
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: trailingAction,
            ),
        ],
      ),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _CategoryChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? AppColors.primary : AppColors.white,
      borderRadius: BorderRadius.circular(20.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 7.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.border,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (selected) ...[
                Icon(Icons.check_rounded, size: 13.sp, color: AppColors.white),
                Gap(4.w),
              ],
              Text(
                label,
                style: TextStyle(
                  fontSize: 11.5.sp,
                  fontWeight: FontWeight.w600,
                  color: selected ? AppColors.white : AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
