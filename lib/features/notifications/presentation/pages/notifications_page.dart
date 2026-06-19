import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/state_views.dart';
import '../cubit/notifications_cubit.dart';
import '../widgets/notification_tile.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NotificationsCubit, NotificationsState>(
          builder: (context, state) {
            return Row(
              children: [
                const Text('الإشعارات'),
                if (state.unreadCount > 0) ...[
                  SizedBox(width: 8.w),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      '${state.unreadCount}',
                      style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary),
                    ),
                  ),
                ],
              ],
            );
          },
        ),
        actions: [
          BlocBuilder<NotificationsCubit, NotificationsState>(
            builder: (context, state) {
              if (state.unreadCount == 0) return const SizedBox.shrink();
              return TextButton.icon(
                onPressed: () =>
                    context.read<NotificationsCubit>().markAllAsRead(),
                icon: Icon(Icons.done_all, size: 16.sp, color: Colors.white),
                label: Text('تعليم الكل',
                    style: TextStyle(fontSize: 12.sp, color: Colors.white)),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<NotificationsCubit, NotificationsState>(
        builder: (context, state) {
          if (state.loading) return const LoadingView();
          if (state.error != null) {
            return ErrorView(
              message: state.error!,
              onRetry: () => context.read<NotificationsCubit>().load(),
            );
          }
          if (state.items.isEmpty) {
            return const EmptyView(
              message: 'لا توجد إشعارات',
              icon: Icons.notifications_none,
            );
          }
          return RefreshIndicator(
            color: AppColors.primary,
            onRefresh: () => context.read<NotificationsCubit>().load(),
            child: ListView.builder(
              padding: EdgeInsets.all(16.w),
              itemCount: state.items.length,
              itemBuilder: (_, i) {
                final n = state.items[i];
                return NotificationTile(
                  notification: n,
                  onTap: () =>
                      context.read<NotificationsCubit>().markAsRead(n.id),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
