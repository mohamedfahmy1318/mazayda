import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../l10n/app_localizations.dart';

/// حقل إدخال معاد الاستخدام مع label وأيقونة ورسالة خطأ اختيارية.
/// عند تمرير [obscure] تظهر أيقونة عين لإظهار/إخفاء كلمة المرور.
class AppTextField extends StatefulWidget {
  final String label;
  final String? hint;
  final TextEditingController? controller;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscure;
  final int? maxLength;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final bool readOnly;
  final VoidCallback? onTap;
  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final ValueChanged<String>? onSubmitted;
  final TextCapitalization textCapitalization;
  final bool enabled;

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
    this.readOnly = false,
    this.onTap,
    this.textInputAction,
    this.autofillHints,
    this.onSubmitted,
    this.textCapitalization = TextCapitalization.none,
    this.enabled = true,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _obscured = widget.obscure;
  late final FocusNode _focusNode;
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode()..addListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    if (mounted && _focused != _focusNode.hasFocus) {
      setState(() => _focused = _focusNode.hasFocus);
    }
  }

  @override
  void didUpdateWidget(AppTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.obscure != oldWidget.obscure) {
      _obscured = widget.obscure;
    }
  }

  @override
  void dispose() {
    _focusNode
      ..removeListener(_handleFocusChange)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 180),
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: _focused ? FontWeight.w700 : FontWeight.w600,
            color: _focused ? AppColors.primary : AppColors.textSecondary,
          ),
          child: Text(widget.label),
        ),
        SizedBox(height: 6.h),
        TextField(
          controller: widget.controller,
          focusNode: _focusNode,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          autofillHints: widget.autofillHints,
          onSubmitted: widget.onSubmitted,
          textCapitalization: widget.textCapitalization,
          enabled: widget.enabled,
          obscureText: _obscured,
          enableSuggestions: !widget.obscure,
          autocorrect: !widget.obscure,
          maxLength: widget.maxLength,
          onChanged: widget.onChanged,
          readOnly: widget.readOnly,
          onTap: widget.onTap,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: TextStyle(
              fontSize: 12.sp,
              color: AppColors.textHint.withValues(alpha: 0.86),
            ),
            counterText: '',
            prefixIcon: widget.icon != null
                ? Icon(
                    widget.icon,
                    size: 19.sp,
                    color: _focused ? AppColors.primary : AppColors.textHint,
                  )
                : null,
            suffixIcon: widget.obscure
                ? IconButton(
                    onPressed: () => setState(() => _obscured = !_obscured),
                    icon: Icon(
                      _obscured
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 19.sp,
                      color: AppColors.textHint,
                    ),
                    tooltip: _obscured ? t.showPassword : t.hidePassword,
                  )
                : null,
            errorText: widget.errorText,
            errorMaxLines: 2,
            filled: true,
            fillColor: widget.enabled
                ? AppColors.white
                : AppColors.border.withValues(alpha: 0.32),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 13.w,
              vertical: 14.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: const BorderSide(color: AppColors.border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: const BorderSide(color: AppColors.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.r),
              borderSide: const BorderSide(
                color: AppColors.primary,
                width: 1.4,
              ),
            ),
          ),
        ),
        SizedBox(height: 6.h),
      ],
    );
  }
}
