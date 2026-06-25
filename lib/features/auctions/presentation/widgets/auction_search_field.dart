import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';

class AuctionSearchField extends StatelessWidget {
  final TextEditingController controller;
  final bool hasText;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;

  const AuctionSearchField({
    super.key,
    required this.controller,
    required this.hasText,
    required this.onChanged,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 0),
      child: SizedBox(
        height: 46.h,
        child: TextField(
          controller: controller,
          textDirection: TextDirection.rtl,
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
            fillColor: AppColors.background,
            isDense: true,
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.r),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.r),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.r),
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
