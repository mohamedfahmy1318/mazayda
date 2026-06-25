import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/state_views.dart';
import '../cubit/notifications_cubit.dart';
import '../widgets/mark_all_read_button.dart';
import '../widgets/notification_tile.dart';
import '../widgets/unread_count_badge.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NotificationsCubit>()..load(),
      child: const _NotificationsView(),
    );
  }
}

class _NotificationsView extends StatelessWidget {
  const _NotificationsView();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NotificationsCubit, NotificationsState>(
          buildWhen: (a, b) => a.unreadCount != b.unreadCount,
          builder: (context, state) {
            return Row(
              children: [
                Text(t.notifications),
                if (state.unreadCount > 0) ...[
                  Gap(8.w),
                  UnreadCountBadge(count: state.unreadCount),
                ],
              ],
            );
          },
        ),
        actions: [
          BlocBuilder<NotificationsCubit, NotificationsState>(
            buildWhen: (a, b) => a.unreadCount != b.unreadCount,
            builder: (context, state) {
              if (state.unreadCount == 0) return const SizedBox.shrink();
              return MarkAllReadButton(
                onPressed: context.read<NotificationsCubit>().markAllAsRead,
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<NotificationsCubit, NotificationsState>(
        builder: (context, state) => _NotificationsBody(state: state),
      ),
    );
  }
}

class _NotificationsBody extends StatelessWidget {
  final NotificationsState state;

  const _NotificationsBody({required this.state});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NotificationsCubit>();
    if (state.loading) return const LoadingView();
    if (state.error != null) {
      return ErrorView(message: state.error!, onRetry: cubit.load);
    }
    if (state.items.isEmpty) {
      return EmptyView(
        message: AppLocalizations.of(context).noNotifications,
        icon: Icons.notifications_none,
      );
    }
    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: cubit.load,
      child: ListView.builder(
        padding: EdgeInsets.all(16.w),
        itemCount: state.items.length,
        itemBuilder: (_, i) {
          final n = state.items[i];
          return NotificationTile(
                notification: n,
                onTap: () => cubit.markAsRead(n.id),
              )
              .animate()
              .fadeIn(duration: 220.ms, delay: (40 * i).ms)
              .slideY(begin: 0.06, end: 0, curve: Curves.easeOut);
        },
      ),
    );
  }
}
