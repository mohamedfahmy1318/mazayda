import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/arabic_numerals.dart';

/// حقل OTP واحد منطقيًا مع ست خانات بصريًا؛ يدعم اللصق وملء SMS التلقائي.
class OtpCodeField extends StatefulWidget {
  final int length;
  final ValueChanged<String> onChanged;
  final bool enabled;

  const OtpCodeField({
    super.key,
    this.length = 6,
    required this.onChanged,
    this.enabled = true,
  });

  @override
  State<OtpCodeField> createState() => _OtpCodeFieldState();
}

class _OtpCodeFieldState extends State<OtpCodeField> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode()..addListener(_onFocusChanged);
  }

  void _onFocusChanged() {
    if (mounted) setState(() {});
  }

  void _handleChanged(String value) {
    setState(() {});
    // الخانات بتعرض اللي كتبه المستخدم (ممكن أرقام عربية)، والـ cubit بياخد
    // النسخة اللاتينية اللي هتتبعت للسيرفر.
    widget.onChanged(toLatinDigits(value));
  }

  void _requestFocus() {
    if (!widget.enabled) return;
    _focusNode.requestFocus();
    _controller.selection = TextSelection.collapsed(
      offset: _controller.text.length,
    );
  }

  @override
  void dispose() {
    _focusNode
      ..removeListener(_onFocusChanged)
      ..dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final value = _controller.text;

    return Semantics(
      textField: true,
      label: t.otpCode,
      value: value,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: _requestFocus,
          child: Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  final gap = 7.w;
                  final available =
                      constraints.maxWidth - gap * (widget.length - 1);
                  final boxWidth = (available / widget.length).clamp(
                    38.w,
                    48.w,
                  );

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(widget.length, (index) {
                      final filled = index < value.length;
                      final active =
                          widget.enabled &&
                          _focusNode.hasFocus &&
                          value.length < widget.length &&
                          index == value.length;
                      final complete = value.length == widget.length;

                      return Padding(
                        padding: EdgeInsets.only(
                          right: index == widget.length - 1 ? 0 : gap,
                        ),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 190),
                          curve: Curves.easeOutCubic,
                          width: boxWidth,
                          height: 56.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: complete
                                ? AppColors.successBg
                                : AppColors.white,
                            borderRadius: BorderRadius.circular(14.r),
                            border: Border.all(
                              color: complete
                                  ? AppColors.success
                                  : active
                                  ? AppColors.primary
                                  : AppColors.border,
                              width: active || complete ? 1.5 : 1,
                            ),
                            boxShadow: active
                                ? [
                                    BoxShadow(
                                      color: AppColors.primary.withValues(
                                        alpha: 0.13,
                                      ),
                                      blurRadius: 11,
                                      offset: const Offset(0, 4),
                                    ),
                                  ]
                                : null,
                          ),
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 150),
                            child: filled
                                ? Text(
                                    value[index],
                                    key: ValueKey(value[index]),
                                    style: TextStyle(
                                      fontSize: 21.sp,
                                      fontWeight: FontWeight.w800,
                                      color: complete
                                          ? AppColors.success
                                          : AppColors.primary,
                                    ),
                                  )
                                : Container(
                                    key: ValueKey('empty-$index'),
                                    width: 5.w,
                                    height: 5.w,
                                    decoration: BoxDecoration(
                                      color: active
                                          ? AppColors.primary.withValues(
                                              alpha: 0.35,
                                            )
                                          : AppColors.borderStrong,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
              Positioned.fill(
                child: IgnorePointer(
                  child: ExcludeSemantics(
                    child: Opacity(
                      opacity: 0,
                      child: TextField(
                        controller: _controller,
                        focusNode: _focusNode,
                        enabled: widget.enabled,
                        // فتح الكيبورد تلقائيًا كان يضغط هيدر شاشة التحقق
                        // على iOS عند استخدام كيبورد خارجي. أول ضغطة على أي
                        // خانة تطلب التركيز مع بقاء دعم One-Time-Code واللصق.
                        autofocus: false,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        autofillHints: const [AutofillHints.oneTimeCode],
                        enableSuggestions: false,
                        autocorrect: false,
                        showCursor: false,
                        maxLength: widget.length,
                        inputFormatters: [
                          // digitsOnly بترمي الأرقام العربية (regex بتاعها [^0-9]).
                          AppInputFormatters.anyNumeralDigitsOnly,
                          LengthLimitingTextInputFormatter(widget.length),
                        ],
                        decoration: const InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                        ),
                        onChanged: _handleChanged,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
