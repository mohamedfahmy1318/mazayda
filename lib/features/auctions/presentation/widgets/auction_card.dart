import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/app_image.dart';
import '../../domain/entities/auction.dart';
import 'auction_status_label.dart';

/// ارتفاع صورة الغلاف في كارت القائمة.
const _cardImageHeight = 120.0;

/// كارت مزاد في القائمة — صورة + حالة + سعر + عدد المزايدين.
class AuctionCard extends StatelessWidget {
  final Auction auction;
  final VoidCallback? onTap;

  const AuctionCard({super.key, required this.auction, this.onTap});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
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
            Stack(
              children: [
                SizedBox(
                  height: _cardImageHeight.h,
                  width: double.infinity,
                  child: AppImage(
                    url: auction.coverPhotoUrl,
                    height: _cardImageHeight.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    fallbackIcon: Icons.gavel,
                  ),
                ),
                Positioned(
                  top: 10.h,
                  right: 10.w,
                  child: _AuctionCardBadge(
                    text: isLive ? t.active : auction.status.badgeLabel(t),
                    color: isLive ? AppColors.success : AppColors.warning,
                  ),
                ),
              ],
            ),
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
                  Gap(4.h),
                  if (auction.wilayaName != null)
                    _AuctionCardLocation(auction.wilayaName!),
                  Gap(8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _AuctionCardPrice(auction: auction, isLive: isLive),
                      _AuctionCardChip(t.bidders(auction.bidCount)),
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
}

/// شارة الحالة فوق الصورة.
class _AuctionCardBadge extends StatelessWidget {
  final String text;
  final Color color;
  const _AuctionCardBadge({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          color: color,
        ),
      ),
    );
  }
}

/// سطر الولاية مع أيقونة الموقع.
class _AuctionCardLocation extends StatelessWidget {
  final String wilayaName;
  const _AuctionCardLocation(this.wilayaName);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          size: 13.sp,
          color: AppColors.textHint,
        ),
        Gap(3.w),
        Text(
          wilayaName,
          style: TextStyle(fontSize: 11.sp, color: AppColors.textHint),
        ),
      ],
    );
  }
}

/// عمود السعر (أعلى مزايدة للمباشر / سعر الافتتاح لغيره).
class _AuctionCardPrice extends StatelessWidget {
  final Auction auction;
  final bool isLive;
  const _AuctionCardPrice({required this.auction, required this.isLive});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isLive ? t.highestBid : t.openingPrice,
          style: TextStyle(fontSize: 10.sp, color: AppColors.textHint),
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
    );
  }
}

/// شريحة عدد المزايدين.
class _AuctionCardChip extends StatelessWidget {
  final String text;
  const _AuctionCardChip(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
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
}
