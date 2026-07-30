import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/app_image.dart';
import '../../../auctions/domain/entities/auction_list_item.dart';
import '../../domain/entities/my_auctions_result.dart';
import 'my_auction_labels.dart';

/// كارت مزاد في «مزاداتي».
///
/// الشارة مشتقّة من التبويب + حالة المزاد الحقيقية فقط — الـ API مش بيرجّع
/// حالة مشاركة المستخدم (مفيش is_winning ولا my_bid)، فمابندّعيش «أنت الأعلى»
/// أو «تم تجاوزك». راجع طلب BE-3.
class MyAuctionCard extends StatelessWidget {
  final AuctionListItem item;
  final MyAuctionTab tab;
  final VoidCallback? onTap;

  const MyAuctionCard({
    super.key,
    required this.item,
    required this.tab,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final badge = badgeFor(tab, item);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: AppColors.border, width: 0.5),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: SizedBox(
                width: 56.w,
                height: 56.w,
                child: AppImage(url: item.coverPhotoUrl, fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  if (item.wilayaName != null) ...[
                    SizedBox(height: 2.h),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 12.sp,
                          color: AppColors.textHint,
                        ),
                        SizedBox(width: 3.w),
                        Expanded(
                          child: Text(
                            item.wilayaName!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: AppColors.textHint,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  SizedBox(height: 3.h),
                  Text(
                    badge.priceLabel(t),
                    style: TextStyle(fontSize: 10.sp, color: AppColors.textHint),
                  ),
                  Text(
                    item.displayPrice.formatted,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      _StatusBadge(badge: badge),
                      SizedBox(width: 6.w),
                      Text(
                        t.bidders(item.bidCount),
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: AppColors.textHint,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_left, size: 20.sp, color: AppColors.borderStrong),
          ],
        ),
      ),
    );
  }
}

/// شارة الحالة داخل الكارت.
class _StatusBadge extends StatelessWidget {
  final MyAuctionBadge badge;

  const _StatusBadge({required this.badge});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final style = badge.style;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: style.bg,
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(style.icon, size: 12.sp, color: style.fg),
          SizedBox(width: 4.w),
          Text(
            badge.statusLabel(t),
            style: TextStyle(fontSize: 10.sp, color: style.fg),
          ),
        ],
      ),
    );
  }
}
