import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/money_format.dart';
import 'auction_countdown.dart';

/// لوحة المزايدة الحية — كارت داكن بيجمع كل حاجة المزايد محتاجها في لقطة:
/// شارة «مباشر» + السعر الحالي + عدد العروض + العدّاد التنازلي + أدوات
/// المزايدة نفسها ([controls]).
///
/// الأدوات جوّه الكارت مش تحته: التصميم بيعتبرهم وحدة واحدة، والمبلغ اللي
/// بتدخله مرتبط بالسعر اللي فوقه مباشرة.
class LiveBidPanel extends StatelessWidget {
  /// المزاد شغّال دلوقتي — بتتحكم في شارة «مباشر».
  final bool isActive;

  final int currentPrice;
  final String currentPriceFormatted;
  final int bidCount;

  /// وقت الإقفال — العدّاد بيختفي لو `null`.
  final DateTime? endTime;

  /// انتهى العدّ — بنطلب قراءة جديدة من السيرفر.
  final VoidCallback? onCountdownFinished;

  /// أدوات المزايدة (اختيارية — بتختفي لو المزايدة مقفولة).
  final Widget? controls;

  const LiveBidPanel({
    super.key,
    required this.isActive,
    required this.currentPrice,
    required this.currentPriceFormatted,
    required this.bidCount,
    this.endTime,
    this.onCountdownFinished,
    this.controls,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [AppColors.primarySoft, AppColors.primaryDeep],
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (isActive)
            const Align(
              alignment: AlignmentDirectional.centerStart,
              child: _LiveBadge(),
            ),
          SizedBox(height: 14.h),
          Text(
            t.currentPrice,
            style: TextStyle(
              fontSize: 11.sp,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: 2.h),
          _Price(
            amount: currentPrice,
            formatted: currentPriceFormatted,
            currency: t.currencyDzd,
          ),
          SizedBox(height: 4.h),
          Text(
            t.bidsSoFar(bidCount),
            style: TextStyle(
              fontSize: 11.sp,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
          if (endTime != null) ...[
            SizedBox(height: 14.h),
            AuctionCountdown(
              endTime: endTime!,
              onFinished: onCountdownFinished,
            ),
          ],
          if (controls != null) ...[SizedBox(height: 14.h), controls!],
        ],
      ),
    );
  }
}

/// السعر الحالي — الرقم كبير والعملة جنبه.
///
/// بنبني الرقم من [amount] مش من نص السيرفر: التنسيق المحلي بيستخدم فاصل
/// آلاف آمن مع اتجاه النص، فالمبالغ اللي فوق المليون مبتتقلبش في العرض
/// العربي. نص السيرفر بيفضل احتياطي لو المبلغ صفر لأي سبب.
class _Price extends StatelessWidget {
  final int amount;
  final String formatted;
  final String currency;

  const _Price({
    required this.amount,
    required this.formatted,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    final text = amount > 0
        ? formatAmount(amount)
        : (formatted.isEmpty ? '—' : formatted);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Flexible(
          child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 1.2,
                ),
              )
              .animate(key: ValueKey(amount))
              .scale(
                duration: 250.ms,
                begin: const Offset(1.06, 1.06),
                end: const Offset(1, 1),
              ),
        ),
        SizedBox(width: 6.w),
        Text(
          currency,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white.withValues(alpha: 0.85),
          ),
        ),
      ],
    );
  }
}

/// شارة «مباشر» — نقطة نابضة داخل كبسولة حمراء.
class _LiveBadge extends StatelessWidget {
  const _LiveBadge();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: AppColors.danger,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            t.live,
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 5.w),
          Container(
                width: 6.w,
                height: 6.w,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              )
              .animate(onPlay: (c) => c.repeat(reverse: true))
              .fadeIn(duration: 700.ms)
              .then()
              .fadeOut(duration: 700.ms),
        ],
      ),
    );
  }
}
