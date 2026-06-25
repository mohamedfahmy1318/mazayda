import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/app_notification.dart';
import 'notification_labels.dart';

/// عنصر إشعار — أيقونة ولون حسب النوع + نقطة لغير المقروء.
class NotificationTile extends StatelessWidget {
  final AppNotification notification;
  final VoidCallback onTap;

  const NotificationTile({
    super.key,
    required this.notification,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final unread = !notification.isRead;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 9.h),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: unread ? AppColors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(13.r),
          border: Border.all(color: AppColors.border, width: 0.5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _NotificationIcon(kind: notification.kind),
            Gap(11.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.title,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  Gap(3.h),
                  Text(
                    notification.body,
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: AppColors.textSecondary,
                      height: 1.5,
                    ),
                  ),
                  Gap(4.h),
                  Text(
                    notificationTimeAgo(notification.createdAt, t),
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColors.textHint,
                    ),
                  ),
                ],
              ),
            ),
            if (unread) const _UnreadDot(),
          ],
        ),
      ),
    );
  }
}

class _NotificationIcon extends StatelessWidget {
  final NotificationKind kind;

  const _NotificationIcon({required this.kind});

  @override
  Widget build(BuildContext context) {
    final style = kind.style;
    return Container(
      width: 42.w,
      height: 42.w,
      decoration: BoxDecoration(
        color: style.bg,
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Icon(style.icon, size: 21.sp, color: style.fg),
    );
  }
}

class _UnreadDot extends StatelessWidget {
  const _UnreadDot();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4.h, right: 4.w),
      width: 8.w,
      height: 8.w,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
    );
  }
}
