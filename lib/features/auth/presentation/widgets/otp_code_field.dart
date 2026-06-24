import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';

/// حقل إدخال كود الـ OTP — خانة لكل رقم مع تنقّل تلقائي للتركيز.
/// يدير الـ controllers/focus داخليًا ويبلّغ الكود المجمّع عبر [onChanged].
class OtpCodeField extends StatefulWidget {
  final int length;
  final ValueChanged<String> onChanged;

  const OtpCodeField({super.key, this.length = 6, required this.onChanged});

  @override
  State<OtpCodeField> createState() => _OtpCodeFieldState();
}

class _OtpCodeFieldState extends State<OtpCodeField> {
  late final List<TextEditingController> _ctrls;
  late final List<FocusNode> _nodes;

  @override
  void initState() {
    super.initState();
    _ctrls = List.generate(widget.length, (_) => TextEditingController());
    _nodes = List.generate(widget.length, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (final c in _ctrls) {
      c.dispose();
    }
    for (final n in _nodes) {
      n.dispose();
    }
    super.dispose();
  }

  void _onDigitChanged(int index, String value) {
    if (value.isNotEmpty && index < widget.length - 1) {
      _nodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _nodes[index - 1].requestFocus();
    }
    widget.onChanged(_ctrls.map((c) => c.text).join());
  }

  @override
  Widget build(BuildContext context) {
    // الكود دائمًا LTR حتى في الواجهة العربية.
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(widget.length, _buildBox),
      ),
    );
  }

  Widget _buildBox(int index) {
    return SizedBox(
      width: 46.w,
      height: 54.h,
      child: TextField(
        controller: _ctrls[index],
        focusNode: _nodes[index],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.primary,
        ),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: const InputDecoration(counterText: ''),
        onChanged: (value) => _onDigitChanged(index, value),
      ),
    );
  }
}
