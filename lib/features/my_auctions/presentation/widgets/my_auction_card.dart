import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/app_image.dart';
import '../../../auctions/domain/entities/auction_list_item.dart';
import '../../domain/entities/my_auctions_result.dart';
import 'my_auction_labels.dart';

/// بطاقة متابعة مشاركة المستخدم: الحالة أولًا، ثم السعر ومزايدته والدفع.
class MyAuctionCard extends StatefulWidget {
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
  State<MyAuctionCard> createState() => _MyAuctionCardState();
}

class _MyAuctionCardState extends State<MyAuctionCard> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final item = widget.item;
    final badge = badgeFor(widget.tab, item);
    final style = badge.style;
    final paymentNote = _paymentNote(item, AppLocalizations.of(context));

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
              color: const Color(0xFF102A21).withValues(alpha: 0.055),
              blurRadius: 18,
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
            child: Stack(
              children: [
                PositionedDirectional(
                  start: 0,
                  top: 18.h,
                  bottom: 18.h,
                  child: Container(
                    width: 3.5.w,
                    decoration: BoxDecoration(
                      color: style.fg,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(13.w),
                  child: Column(
                    children: [
                      _CardSummary(item: item, badge: badge),
                      Gap(12.h),
                      Container(
                        height: 1,
                        color: AppColors.border.withValues(alpha: 0.72),
                      ),
                      Gap(11.h),
                      _PricingSummary(item: item, badge: badge),
                      if (paymentNote != null) ...[
                        Gap(11.h),
                        _PaymentBanner(note: paymentNote),
                      ],
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

class _CardSummary extends StatelessWidget {
  final AuctionListItem item;
  final MyAuctionBadge badge;

  const _CardSummary({required this.item, required this.badge});

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: SizedBox(
            width: 82.w,
            height: 82.w,
            child: Stack(
              fit: StackFit.expand,
              children: [
                AppImage(
                  url: item.coverPhotoUrl,
                  fit: BoxFit.cover,
                  fallbackIcon: Icons.gavel_rounded,
                ),
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Color(0x66000000)],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap(11.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _StatusBadge(badge: badge),
              Gap(7.h),
              Text(
                item.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13.5.sp,
                  height: 1.4,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              if (item.wilayaName != null) ...[
                Gap(5.h),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 13.sp,
                      color: AppColors.textHint,
                    ),
                    Gap(3.w),
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
            ],
          ),
        ),
        Gap(5.w),
        Container(
          width: 30.w,
          height: 30.w,
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.075),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Icon(
            isRtl ? Icons.arrow_back_rounded : Icons.arrow_forward_rounded,
            size: 17.sp,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}

class _PricingSummary extends StatelessWidget {
  final AuctionListItem item;
  final MyAuctionBadge badge;

  const _PricingSummary({required this.item, required this.badge});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: _PriceValue(
            label: badge.priceLabel(t),
            value: item.resultPrice.formatted,
            valueColor: AppColors.primary,
          ),
        ),
        if (item.myHighestBid != null) ...[
          Container(
            width: 1,
            height: 34.h,
            margin: EdgeInsets.symmetric(horizontal: 11.w),
            color: AppColors.border,
          ),
          Expanded(
            child: _PriceValue(
              label: t.myAuctionsMyBid,
              value: item.myHighestBid!.formatted,
              valueColor: AppColors.textPrimary,
            ),
          ),
        ],
        Gap(8.w),
        Container(
          constraints: BoxConstraints(maxWidth: 92.w),
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.people_outline_rounded,
                size: 13.sp,
                color: AppColors.textSecondary,
              ),
              Gap(4.w),
              Flexible(
                child: Text(
                  '${item.bidCount}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PriceValue extends StatelessWidget {
  final String label;
  final String value;
  final Color valueColor;

  const _PriceValue({
    required this.label,
    required this.value,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 9.5.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.textHint,
          ),
        ),
        Gap(2.h),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w800,
            color: valueColor,
          ),
        ),
      ],
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final MyAuctionBadge badge;

  const _StatusBadge({required this.badge});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final style = badge.style;
    final shouldPulse =
        badge == MyAuctionBadge.live || badge == MyAuctionBadge.winning;
    final reduceMotion = MediaQuery.disableAnimationsOf(context);

    Widget icon = Icon(style.icon, size: 12.sp, color: style.fg);
    if (shouldPulse && !reduceMotion) {
      icon = icon
          .animate(onPlay: (controller) => controller.repeat(reverse: true))
          .fade(begin: 0.50, end: 1, duration: 900.ms)
          .scaleXY(begin: 0.88, end: 1.08, duration: 900.ms);
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: style.bg,
        borderRadius: BorderRadius.circular(9.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          Gap(4.w),
          Flexible(
            child: Text(
              badge.statusLabel(t),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 9.5.sp,
                fontWeight: FontWeight.w700,
                color: style.fg,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

typedef _PaymentNote = ({
  String text,
  IconData icon,
  Color color,
  Color background,
});

_PaymentNote? _paymentNote(AuctionListItem item, AppLocalizations t) {
  if (item.isOver && item.isWinnerResolved == true) {
    final text =
        finalPaymentLabel(item.finalPaymentStatus, t) ??
        t.myAuctionsFinalPaymentDue;
    return switch (item.finalPaymentStatus) {
      'CONFIRMED' => (
        text: text,
        icon: Icons.check_circle_outline_rounded,
        color: AppColors.success,
        background: AppColors.successBg,
      ),
      'FAILED' => (
        text: text,
        icon: Icons.error_outline_rounded,
        color: AppColors.danger,
        background: AppColors.dangerBg,
      ),
      _ => (
        text: text,
        icon: Icons.account_balance_wallet_outlined,
        color: AppColors.warning,
        background: AppColors.warningBg,
      ),
    };
  }

  if (item.depositPaid == true && !item.isOver) {
    return (
      text: t.myAuctionsDepositPaid,
      icon: Icons.verified_outlined,
      color: AppColors.success,
      background: AppColors.successBg,
    );
  }
  return null;
}

class _PaymentBanner extends StatelessWidget {
  final _PaymentNote note;

  const _PaymentBanner({required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: note.background,
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Row(
        children: [
          Icon(note.icon, size: 15.sp, color: note.color),
          Gap(6.w),
          Expanded(
            child: Text(
              note.text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: note.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
