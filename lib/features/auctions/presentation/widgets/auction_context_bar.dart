import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';

class AuctionContextBar extends StatelessWidget {
  final bool visible;
  final int count;
  final bool hasMore;
  final String? typeLabel;
  final String? wilayaLabel;
  final String query;
  final VoidCallback onClearType;
  final VoidCallback onClearWilaya;
  final VoidCallback onClearAll;

  const AuctionContextBar({
    super.key,
    required this.visible,
    required this.count,
    required this.hasMore,
    required this.typeLabel,
    required this.wilayaLabel,
    required this.query,
    required this.onClearType,
    required this.onClearWilaya,
    required this.onClearAll,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return AnimatedSize(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeOut,
      alignment: Alignment.topCenter,
      child: !visible
          ? const SizedBox(width: double.infinity)
          : Padding(
              padding: EdgeInsets.fromLTRB(16.w, 10.h, 12.w, 2.h),
              child: Row(
                children: [
                  // عدد النتائج
                  Text(
                    t.auctionsCount('$count${hasMore ? '+' : ''}'),
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  // الفلاتر النشطة (قابلة للحذف)
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          if (typeLabel != null)
                            _RemovableTag(
                              label: typeLabel!,
                              onRemove: onClearType,
                            ),
                          if (wilayaLabel != null)
                            _RemovableTag(
                              label: wilayaLabel!,
                              onRemove: onClearWilaya,
                            ),
                        ],
                      ),
                    ),
                  ),
                  // مسح الكل
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: onClearAll,
                    child: Text(
                      t.clearAll,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

class _RemovableTag extends StatelessWidget {
  final String label;
  final VoidCallback onRemove;

  const _RemovableTag({required this.label, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 6.w),
      child: Container(
        padding: EdgeInsetsDirectional.only(start: 10.w, end: 5.w),
        height: 28.h,
        decoration: BoxDecoration(
          color: AppColors.primary.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 11.5.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
              ),
            ),
            SizedBox(width: 3.w),
            GestureDetector(
              onTap: onRemove,
              child: Icon(
                Icons.close_rounded,
                size: 14.sp,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
