import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';

/// حقل إدخال معاد الاستخدام مع label وأيقونة ورسالة خطأ اختيارية.
class AppTextField extends StatelessWidget {
  final String label;
  final String? hint;
  final TextEditingController? controller;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscure;
  final int? maxLength;
  final String? errorText;
  final ValueChanged<String>? onChanged;

  const AppTextField({
    super.key,
    required this.label,
    this.controller,
    this.hint,
    this.icon,
    this.keyboardType,
    this.obscure = false,
    this.maxLength,
    this.errorText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscure,
          maxLength: maxLength,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hint,
            counterText: '',
            prefixIcon: icon != null
                ? Icon(icon, size: 19.sp, color: AppColors.textHint)
                : null,
            errorText: errorText,
          ),
        ),
        SizedBox(height: 6.h),
      ],
    );
  }
}
