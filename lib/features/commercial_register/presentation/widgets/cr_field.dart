import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';

/// حقل نموذج السجل التجاري.
///
/// بيمسك الـ controller بنفسه (مش `initialValue` + key) عشان الكتابة ما تتقطعش
/// والمؤشر ما ينطّش لآخر النص مع كل حرف، وبيسيب اللي كتبه المستخدم زي ما هو —
/// الأرقام العربية بتتحوّل عند الإرسال مش وهو بيكتب.
class CrField extends StatefulWidget {
  final String label;

  /// القيمة الجاية من الـ state — بنزامنها لما البيانات توصل من السيرفر.
  final String value;

  final ValueChanged<String> onChanged;
  final String? hint;
  final String? errorText;
  final bool enabled;
  final bool readOnly;
  final bool required;

  /// الحقل مكتمل وسليم — بتظهر علامة صح.
  final bool isDone;

  final IconData? icon;
  final int? maxLength;
  final bool showCounter;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final FocusNode? focusNode;
  final VoidCallback? onTap;

  /// المستخدم سـاب الحقل — إشارة الواجهة إنها تعرض الخطأ.
  final VoidCallback? onBlur;

  final ValueChanged<String>? onSubmitted;

  const CrField({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.hint,
    this.errorText,
    this.enabled = true,
    this.readOnly = false,
    this.required = true,
    this.isDone = false,
    this.icon,
    this.maxLength,
    this.showCounter = false,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.focusNode,
    this.onTap,
    this.onBlur,
    this.onSubmitted,
  });

  @override
  State<CrField> createState() => _CrFieldState();
}

class _CrFieldState extends State<CrField> {
  late final TextEditingController _controller = TextEditingController(
    text: widget.value,
  );
  late final FocusNode _focusNode = widget.focusNode ?? FocusNode();
  bool _focused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChanged);
  }

  void _onFocusChanged() {
    if (!mounted) return;
    final focused = _focusNode.hasFocus;
    if (focused == _focused) return;
    setState(() => _focused = focused);
    if (!focused) widget.onBlur?.call();
  }

  @override
  void didUpdateWidget(CrField oldWidget) {
    super.didUpdateWidget(oldWidget);
    // بنزامن مع الـ state بس لما القيمة تتغيّر من برّه (ملء النموذج من
    // السيرفر / اختيار تاريخ) — مش وإحنا بنكتب، عشان ما نلغبطش المؤشر.
    if (widget.value != oldWidget.value &&
        widget.value != _controller.text &&
        !_focusNode.hasFocus) {
      _controller.text = widget.value;
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChanged);
    if (widget.focusNode == null) _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasError = widget.errorText != null;
    final accent = hasError
        ? AppColors.danger
        : _focused
        ? AppColors.primary
        : AppColors.textSecondary;

    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 180),
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: _focused ? FontWeight.w700 : FontWeight.w600,
              color: accent,
            ),
            child: Row(
              children: [
                Text(widget.label),
                if (widget.required)
                  Text(
                    ' *',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.danger.withValues(alpha: 0.7),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          TextField(
            controller: _controller,
            focusNode: _focusNode,
            enabled: widget.enabled,
            readOnly: widget.readOnly,
            onChanged: widget.onChanged,
            onTap: widget.onTap,
            onSubmitted: widget.onSubmitted,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            inputFormatters: widget.inputFormatters,
            textCapitalization: widget.textCapitalization,
            maxLength: widget.maxLength,
            style: TextStyle(fontSize: 13.sp),
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: TextStyle(
                fontSize: 12.sp,
                color: AppColors.textHint.withValues(alpha: 0.8),
              ),
              counterText: widget.showCounter ? null : '',
              counterStyle: TextStyle(fontSize: 10.sp),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 13.h,
              ),
              prefixIcon: widget.icon == null
                  ? null
                  : Icon(
                      widget.icon,
                      size: 18.sp,
                      color: hasError
                          ? AppColors.danger
                          : _focused
                          ? AppColors.primary
                          : AppColors.textHint,
                    ),
              suffixIcon: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                transitionBuilder: (child, animation) =>
                    ScaleTransition(scale: animation, child: child),
                child: widget.isDone && !hasError
                    ? Icon(
                        Icons.check_circle,
                        key: const ValueKey('done'),
                        size: 18.sp,
                        color: AppColors.success,
                      )
                    : const SizedBox.shrink(key: ValueKey('none')),
              ),
              suffixIconConstraints: BoxConstraints(minWidth: 36.w),
              fillColor: widget.enabled
                  ? AppColors.white
                  : AppColors.border.withValues(alpha: 0.3),
              enabledBorder: _border(
                hasError ? AppColors.danger : AppColors.borderStrong,
              ),
              focusedBorder: _border(
                hasError ? AppColors.danger : AppColors.primary,
                width: 1.5,
              ),
              disabledBorder: _border(AppColors.border),
            ),
          ),
          // رسالة الخطأ بتفتح وتقفل بنعومة بدل ما الليست تنطّ.
          AnimatedSize(
            duration: const Duration(milliseconds: 190),
            curve: Curves.easeOutCubic,
            alignment: Alignment.topCenter,
            child: hasError
                ? Padding(
                    padding: EdgeInsets.only(top: 5.h, right: 2.w, left: 2.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.error_outline,
                          size: 13.sp,
                          color: AppColors.danger,
                        ),
                        SizedBox(width: 4.w),
                        Expanded(
                          child: Text(
                            widget.errorText!,
                            style: TextStyle(
                              fontSize: 10.5.sp,
                              color: AppColors.danger,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(width: double.infinity),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder _border(Color color, {double width = 1}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: color, width: width),
      );
}
