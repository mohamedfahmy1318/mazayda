import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/my_auctions_result.dart';
import 'my_auction_labels.dart';

/// شريط تبويبات «مزاداتي» (chips قابلة للتمرير أفقيًا) مع عدّاد لكل تبويب.
class MyAuctionTabBar extends StatelessWidget {
  final MyAuctionTab selected;
  final ValueChanged<MyAuctionTab> onSelect;

  /// الأعداد جاية من `meta.counts` — بتوصل مع أي تبويب، فالعدّادات كلها
  /// بتفضل محدّثة حتى وإحنا شايفين تبويب واحد.
  final MyAuctionCounts counts;

  const MyAuctionTabBar({
    super.key,
    required this.selected,
    required this.onSelect,
    this.counts = MyAuctionCounts.empty,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Container(
      height: 58.h,
      margin: EdgeInsets.fromLTRB(12.w, 10.h, 12.w, 0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.8)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.035),
            blurRadius: 14,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Row(
          children: MyAuctionTab.values.map((tab) {
            return Padding(
              padding: EdgeInsetsDirectional.only(end: 7.w),
              child: _TabChip(
                label: tab.label(t),
                count: counts.of(tab),
                selected: tab == selected,
                onTap: () => onSelect(tab),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _TabChip extends StatelessWidget {
  final String label;
  final int count;
  final bool selected;
  final VoidCallback onTap;

  const _TabChip({
    required this.label,
    required this.count,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      selected: selected,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.r),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20.r),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOutCubic,
            height: 38.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: selected
                  ? AppColors.primary
                  : AppColors.background.withValues(alpha: 0.72),
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                color: selected ? AppColors.primary : AppColors.border,
              ),
              boxShadow: selected
                  ? [
                      BoxShadow(
                        color: AppColors.primary.withValues(alpha: 0.18),
                        blurRadius: 9,
                        offset: const Offset(0, 4),
                      ),
                    ]
                  : null,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 180),
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 12.sp,
                    fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                    color: selected ? Colors.white : AppColors.textSecondary,
                  ),
                  child: Text(label),
                ),
                if (count > 0) ...[
                  SizedBox(width: 6.w),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 180),
                    constraints: BoxConstraints(minWidth: 20.w),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.w,
                      vertical: 1.h,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: selected
                          ? Colors.white.withValues(alpha: 0.20)
                          : AppColors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      '$count',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: selected
                            ? Colors.white
                            : AppColors.textSecondary,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
