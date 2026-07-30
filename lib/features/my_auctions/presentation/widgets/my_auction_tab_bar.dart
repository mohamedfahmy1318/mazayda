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
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 14.h, 16.w, 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: MyAuctionTab.values.map((tab) {
            return Padding(
              padding: EdgeInsets.only(left: 7.w),
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
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        curve: Curves.easeOut,
        height: 36.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? AppColors.primary : AppColors.white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: selected ? AppColors.primary : AppColors.borderStrong,
            width: 0.5,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: selected ? Colors.white : AppColors.textSecondary,
              ),
            ),
            // العدّاد يظهر فقط لما يكون فيه عناصر فعلًا.
            if (count > 0) ...[
              SizedBox(width: 6.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
                decoration: BoxDecoration(
                  color: selected
                      ? Colors.white.withValues(alpha: 0.22)
                      : AppColors.neutralBg,
                  borderRadius: BorderRadius.circular(9.r),
                ),
                child: Text(
                  '$count',
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: selected ? Colors.white : AppColors.textSecondary,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
