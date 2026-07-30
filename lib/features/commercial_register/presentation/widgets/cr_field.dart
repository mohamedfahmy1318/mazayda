import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';

/// حقل نصّي بعنوان — يدعم القراءة فقط (لحقل التاريخ) والتعطيل (سجل معتمد).
class CrField extends StatelessWidget {
  final String label;
  final String value;
  final ValueChanged<String> onChanged;
  final String? errorText;
  final bool enabled;
  final bool readOnly;
  final IconData? icon;
  final VoidCallback? onTap;

  const CrField({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.errorText,
    this.enabled = true,
    this.readOnly = false,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(height: 6.h),
          TextFormField(
            // مفتاح على القيمة عشان الحقل يتحدّث لما نملأ النموذج من السيرفر.
            key: ValueKey('$label|$value'),
            initialValue: value,
            enabled: enabled,
            readOnly: readOnly,
            onChanged: onChanged,
            onTap: onTap,
            decoration: InputDecoration(
              errorText: errorText,
              prefixIcon: icon == null
                  ? null
                  : Icon(icon, size: 19.sp, color: AppColors.textHint),
            ),
          ),
        ],
      ),
    );
  }
}
