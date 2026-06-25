import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import 'auction_filter_options.dart';

class AuctionStatusStrip extends StatelessWidget {
  final String? current;
  final int filterCount;
  final ValueChanged<String?> onSelectStatus;
  final VoidCallback onOpenFilters;

  const AuctionStatusStrip({
    super.key,
    required this.current,
    required this.filterCount,
    required this.onSelectStatus,
    required this.onOpenFilters,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return SizedBox(
      height: 50.h,
      child: Row(
        children: [
          // زر التصفية (ثابت)
          Padding(
            padding: EdgeInsets.only(right: 16.w, left: 4.w),
            child: _FilterButton(count: filterCount, onTap: onOpenFilters),
          ),
          // شيبس الحالة (قابلة للتمرير)
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsetsDirectional.only(end: 16.w),
              itemCount: auctionStatusKeys.length,
              separatorBuilder: (_, __) => SizedBox(width: 8.w),
              itemBuilder: (_, i) {
                final key = auctionStatusKeys[i];
                return Center(
                  child: _Pill(
                    label: auctionStatusFilterLabel(key, t),
                    selected: current == key,
                    onTap: () => onSelectStatus(key),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterButton extends StatelessWidget {
  final int count;
  final VoidCallback onTap;

  const _FilterButton({required this.count, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final active = count > 0;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 36.h,
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        decoration: BoxDecoration(
          color: active ? AppColors.primary : AppColors.background,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: active ? AppColors.primary : AppColors.border,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.tune_rounded,
              size: 17.sp,
              color: active ? AppColors.white : AppColors.textSecondary,
            ),
            SizedBox(width: 6.w),
            Text(
              AppLocalizations.of(context).filter,
              style: TextStyle(
                fontSize: 12.5.sp,
                fontWeight: FontWeight.w600,
                color: active ? AppColors.white : AppColors.textSecondary,
              ),
            ),
            if (active) ...[
              SizedBox(width: 6.w),
              Container(
                constraints: BoxConstraints(minWidth: 18.w),
                height: 18.w,
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(9.w),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '$count',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                      height: 1,
                    ),
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

class _Pill extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _Pill({
    required this.label,
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
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary : AppColors.background,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: selected ? AppColors.primary : AppColors.border,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.5.sp,
            fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
            color: selected ? AppColors.white : AppColors.textSecondary,
          ),
        ),
      ),
    );
  }
}
