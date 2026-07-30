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
/// الشارة + سطر «أعلى مزايدة لك» مشتقّين من حالة المشاركة اللي بيرجّعها
/// `MyAuctionResource` (BE-3). لو أي مفتاح منهم غاب، السطر مايتعرضش —
/// مابندّعيش «أنت الأعلى» ولا «تم تجاوزك» من غير بيانات.
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
                    item.resultPrice.formatted,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
                  // أعلى مزايدة للمستخدم — معلومة مختلفة عن سعر المزاد،
                  // وبتظهر بس لما الباك يبعتها فعلًا.
                  if (item.myHighestBid != null)
                    Text(
                      '${t.myAuctionsMyBid}: ${item.myHighestBid!.formatted}',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: AppColors.textSecondary,
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
                  // حالة الدفع: الكفالة للمزادات الشغّالة، والدفع النهائي
                  // للفائز. الاتنين من BE-3 وبيغيبوا لو مبعتهمش.
                  ..._paymentNotes(t),
                ],
              ),
            ),
            Icon(Icons.chevron_left, size: 20.sp, color: AppColors.borderStrong),
          ],
        ),
      ),
    );
  }

  /// سطور حالة الدفع — الفائز بيشوف حالة الدفع النهائي، وباقي المشاركين
  /// بيشوفوا إن الكفالة مدفوعة. مافيش سطر أصلًا لو الباك مبعتش الحقول.
  List<Widget> _paymentNotes(AppLocalizations t) {
    final finalNote = item.isOver
        ? (item.isWinnerResolved == true
              ? finalPaymentLabel(item.finalPaymentStatus, t) ??
                    t.myAuctionsFinalPaymentDue
              : null)
        : null;

    final note = finalNote ??
        (item.depositPaid == true && !item.isOver
            ? t.myAuctionsDepositPaid
            : null);

    if (note == null) return const [];

    return [
      SizedBox(height: 4.h),
      Row(
        children: [
          Icon(
            finalNote != null
                ? Icons.account_balance_wallet_outlined
                : Icons.verified_outlined,
            size: 11.sp,
            color: finalNote != null ? AppColors.warning : AppColors.success,
          ),
          SizedBox(width: 3.w),
          Expanded(
            child: Text(
              note,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.sp,
                color: finalNote != null
                    ? AppColors.warning
                    : AppColors.success,
              ),
            ),
          ),
        ],
      ),
    ];
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
