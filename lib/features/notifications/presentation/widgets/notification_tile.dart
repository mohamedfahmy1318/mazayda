import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/app_notification.dart';

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
    final (Color fg, Color bg, IconData icon) = _style(notification.kind);
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
            Container(
              width: 42.w,
              height: 42.w,
              decoration: BoxDecoration(
                color: bg,
                borderRadius: BorderRadius.circular(11.r),
              ),
              child: Icon(icon, size: 21.sp, color: fg),
            ),
            SizedBox(width: 11.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.title,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textPrimary),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    notification.body,
                    style: TextStyle(
                        fontSize: 11.sp,
                        color: AppColors.textSecondary,
                        height: 1.5),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    _timeAgo(notification.createdAt),
                    style: TextStyle(
                        fontSize: 10.sp, color: AppColors.textHint),
                  ),
                ],
              ),
            ),
            if (unread)
              Container(
                margin: EdgeInsets.only(top: 4.h, right: 4.w),
                width: 8.w,
                height: 8.w,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }

  (Color, Color, IconData) _style(NotificationKind kind) => switch (kind) {
        NotificationKind.won => (
            AppColors.warning,
            AppColors.warningBg,
            Icons.emoji_events_outlined
          ),
        NotificationKind.outbid => (
            AppColors.danger,
            AppColors.dangerBg,
            Icons.arrow_downward
          ),
        NotificationKind.refund => (
            AppColors.info,
            AppColors.infoBg,
            Icons.replay
          ),
        NotificationKind.newAuction => (
            AppColors.success,
            AppColors.successBg,
            Icons.gavel
          ),
        NotificationKind.reminder => (
            AppColors.neutral,
            AppColors.neutralBg,
            Icons.schedule
          ),
        NotificationKind.payment => (
            AppColors.danger,
            AppColors.dangerBg,
            Icons.credit_card
          ),
        NotificationKind.generic => (
            AppColors.neutral,
            AppColors.neutralBg,
            Icons.notifications_outlined
          ),
      };

  String _timeAgo(DateTime dt) {
    final diff = DateTime.now().difference(dt);
    if (diff.inMinutes < 1) return 'الآن';
    if (diff.inMinutes < 60) return 'منذ ${diff.inMinutes} دقيقة';
    if (diff.inHours < 24) return 'منذ ${diff.inHours} ساعة';
    if (diff.inDays < 7) return 'منذ ${diff.inDays} يوم';
    return '${dt.year}/${dt.month}/${dt.day}';
  }
}
