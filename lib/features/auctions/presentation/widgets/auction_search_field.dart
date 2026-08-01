import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';

class AuctionSearchField extends StatelessWidget {
  final TextEditingController controller;
  final bool hasText;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;
  final EdgeInsetsGeometry? padding;
  final Color fillColor;
  final bool showShadow;

  const AuctionSearchField({
    super.key,
    required this.controller,
    required this.hasText,
    required this.onChanged,
    required this.onClear,
    this.padding,
    this.fillColor = AppColors.background,
    this.showShadow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 0),
      child: Container(
        height: 46.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: showShadow
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.10),
                    blurRadius: 18,
                    offset: const Offset(0, 7),
                  ),
                ]
              : null,
        ),
        child: TextField(
          controller: controller,
          textAlignVertical: TextAlignVertical.center,
          style: TextStyle(fontSize: 14.sp, color: AppColors.textPrimary),
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context).searchAuctionHint,
            hintStyle: TextStyle(fontSize: 13.sp, color: AppColors.textHint),
            prefixIcon: Icon(
              Icons.search_rounded,
              size: 22.sp,
              color: AppColors.textHint,
            ),
            suffixIcon: hasText
                ? IconButton(
                    icon: Icon(
                      Icons.close_rounded,
                      size: 18.sp,
                      color: AppColors.textSecondary,
                    ),
                    onPressed: onClear,
                  )
                : null,
            filled: true,
            fillColor: fillColor,
            isDense: true,
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: const BorderSide(
                color: AppColors.primary,
                width: 1.3,
              ),
            ),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
