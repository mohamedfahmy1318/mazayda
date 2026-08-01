import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/app_image.dart';
import '../../domain/entities/auction_list_item.dart';
import 'auction_status_label.dart';

const _cardImageHeight = 154.0;

/// بطاقة المزاد الرئيسية؛ تعطي الأولوية للصورة والحالة والسعر مع استجابة لمس.
class AuctionCard extends StatefulWidget {
  final AuctionListItem auction;
  final VoidCallback? onTap;

  const AuctionCard({super.key, required this.auction, this.onTap});

  @override
  State<AuctionCard> createState() => _AuctionCardState();
}

class _AuctionCardState extends State<AuctionCard> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final auction = widget.auction;
    final t = AppLocalizations.of(context);
    final isLive = auction.isLive;

    return AnimatedScale(
      scale: _pressed ? 0.985 : 1,
      duration: const Duration(milliseconds: 120),
      curve: Curves.easeOut,
      child: Container(
        margin: EdgeInsets.only(bottom: 14.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: AppColors.border.withValues(alpha: 0.85)),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF102A21).withValues(alpha: 0.065),
              blurRadius: 20,
              offset: const Offset(0, 7),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: widget.onTap,
            onHighlightChanged: (value) {
              if (_pressed != value) setState(() => _pressed = value);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _AuctionImage(auction: auction, isLive: isLive),
                Padding(
                  padding: EdgeInsets.fromLTRB(14.w, 12.h, 14.w, 13.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        auction.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.5.sp,
                          height: 1.45,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      if (auction.wilayaName != null) ...[
                        Gap(7.h),
                        _AuctionMetadata(auction: auction),
                      ],
                      Gap(12.h),
                      Container(
                        height: 1,
                        color: AppColors.border.withValues(alpha: 0.72),
                      ),
                      Gap(11.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: _AuctionCardPrice(
                              auction: auction,
                              isLive: isLive,
                            ),
                          ),
                          _BiddersChip(text: t.bidders(auction.bidCount)),
                          Gap(9.w),
                          _OpenAuctionIndicator(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AuctionImage extends StatelessWidget {
  final AuctionListItem auction;
  final bool isLive;

  const _AuctionImage({required this.auction, required this.isLive});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return SizedBox(
      height: _cardImageHeight.h,
      child: Stack(
        fit: StackFit.expand,
        children: [
          AppImage(
            url: auction.coverPhotoUrl,
            height: _cardImageHeight.h,
            width: double.infinity,
            fit: BoxFit.cover,
            fallbackIcon: Icons.gavel_rounded,
          ),
          const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Color(0xA6000000)],
                stops: [0.44, 1],
              ),
            ),
          ),
          PositionedDirectional(
            top: 11.h,
            start: 11.w,
            child: _AuctionStatusBadge(
              text: isLive ? t.live : auction.status.badgeLabel(t),
              isLive: isLive,
            ),
          ),
          if (auction.category?.name.isNotEmpty == true)
            PositionedDirectional(
              bottom: 10.h,
              start: 11.w,
              end: 11.w,
              child: Row(
                children: [
                  _GlassTag(
                    icon: Icons.category_outlined,
                    text: auction.category!.name,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _AuctionStatusBadge extends StatelessWidget {
  final String text;
  final bool isLive;

  const _AuctionStatusBadge({required this.text, required this.isLive});

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.disableAnimationsOf(context);
    Widget dot = Container(
      width: 7.w,
      height: 7.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isLive ? const Color(0xFFFF5B5B) : AppColors.gold,
        boxShadow: isLive
            ? [
                BoxShadow(
                  color: const Color(0xFFFF5B5B).withValues(alpha: 0.55),
                  blurRadius: 7,
                ),
              ]
            : null,
      ),
    );

    if (isLive && !reduceMotion) {
      dot = dot
          .animate(onPlay: (controller) => controller.repeat(reverse: true))
          .fade(begin: 0.45, end: 1, duration: 850.ms)
          .scaleXY(begin: 0.78, end: 1.12, duration: 850.ms);
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: const Color(0xFF102A21).withValues(alpha: 0.82),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.white.withValues(alpha: 0.16)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          dot,
          Gap(6.w),
          Text(
            text,
            style: TextStyle(
              fontSize: 10.5.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class _GlassTag extends StatelessWidget {
  final IconData icon;
  final String text;

  const _GlassTag({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.36),
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.white.withValues(alpha: 0.16)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 12.sp, color: AppColors.white),
            Gap(5.w),
            Flexible(
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AuctionMetadata extends StatelessWidget {
  final AuctionListItem auction;

  const _AuctionMetadata({required this.auction});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (auction.wilayaName != null) ...[
          Icon(
            Icons.location_on_outlined,
            size: 14.sp,
            color: AppColors.textHint,
          ),
          Gap(3.w),
          Flexible(
            child: Text(
              auction.wilayaName!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 11.sp, color: AppColors.textSecondary),
            ),
          ),
        ],
      ],
    );
  }
}

class _AuctionCardPrice extends StatelessWidget {
  final AuctionListItem auction;
  final bool isLive;

  const _AuctionCardPrice({required this.auction, required this.isLive});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final hasBids = auction.bidCount > 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isLive && hasBids ? t.highestBid : t.openingPrice,
          style: TextStyle(
            fontSize: 9.5.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textHint,
          ),
        ),
        Gap(2.h),
        Text(
          isLive && hasBids
              ? auction.currentPrice.formatted
              : auction.openingPrice.formatted,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w800,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}

class _BiddersChip extends StatelessWidget {
  final String text;
  const _BiddersChip({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 120.w),
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.successBg,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.people_outline_rounded,
            size: 13.sp,
            color: AppColors.success,
          ),
          Gap(4.w),
          Flexible(
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 9.5.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.success,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _OpenAuctionIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    return Container(
      width: 34.w,
      height: 34.w,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(11.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.20),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Icon(
        isRtl ? Icons.arrow_back_rounded : Icons.arrow_forward_rounded,
        size: 18.sp,
        color: AppColors.white,
      ),
    );
  }
}
