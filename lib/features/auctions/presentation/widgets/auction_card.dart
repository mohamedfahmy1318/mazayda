import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/app_image.dart';
import '../../domain/entities/auction.dart';

/// كارت مزاد في القائمة — صورة + حالة + سعر + عدد المزايدين.
class AuctionCard extends StatelessWidget {
  final Auction auction;
  final VoidCallback? onTap;

  const AuctionCard({super.key, required this.auction, this.onTap});

  @override
  Widget build(BuildContext context) {
    final isLive = auction.isLive;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 12.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: AppColors.border, width: 0.5),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // الصورة + الشارة
            Stack(
              children: [
                SizedBox(
                  height: 120.h,
                  width: double.infinity,
                  child: AppImage(
                    url: auction.coverPhotoUrl,
                    height: 120.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    fallbackIcon: Icons.gavel,
                  ),
                ),
                Positioned(
                  top: 10.h,
                  right: 10.w,
                  child: _badge(
                    isLive ? 'نشط' : auction.status.labelAr,
                    isLive ? AppColors.success : AppColors.warning,
                  ),
                ),
              ],
            ),
            // المحتوى
            Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    auction.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  if (auction.wilayaName != null)
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            size: 13.sp, color: AppColors.textHint),
                        SizedBox(width: 3.w),
                        Text(
                          auction.wilayaName!,
                          style: TextStyle(
                              fontSize: 11.sp, color: AppColors.textHint),
                        ),
                      ],
                    ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isLive ? 'أعلى مزايدة' : 'السعر الافتتاحي',
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.textHint),
                          ),
                          Text(
                            isLive
                                ? auction.currentPrice.formatted
                                : auction.openingPrice.formatted,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      _chip('${auction.bidCount} مزايد'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _badge(String text, Color color) => Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 11.sp, fontWeight: FontWeight.w500, color: color),
        ),
      );

  Widget _chip(String text) => Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: AppColors.successBg,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 11.sp, color: AppColors.success),
        ),
      );
}
