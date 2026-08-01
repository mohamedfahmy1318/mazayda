import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/money_format.dart';

/// قيم الزيادة السريعة (بالدينار الكامل) — بترتيب التصميم من اليمين للشمال.
const _kQuickSteps = [1000, 5000, 10000];

/// أدوات المزايدة: زيادات سريعة + حقل مبلغ حر + زر التقديم.
///
/// بتتحط جوّه [LiveBidPanel] على خلفية داكنة، فكل الألوان هنا مبنية على
/// الأبيض بشفافيات مختلفة.
class BidControls extends StatefulWidget {
  final int currentPrice;
  final bool placingBid;
  final ValueChanged<int> onPlaceBid;

  const BidControls({
    super.key,
    required this.currentPrice,
    required this.placingBid,
    required this.onPlaceBid,
  });

  @override
  State<BidControls> createState() => _BidControlsState();
}

class _BidControlsState extends State<BidControls> {
  final _controller = TextEditingController();
  String? _error;

  /// أقل مبلغ مقبول — أي زيادة فوق السعر الحالي.
  ///
  /// الباك مابيرجّعش خطوة مزايدة، فالتحقق ده مبدئي بس: بيمنع الإرسال الغلط
  /// الواضح، والقرار النهائي للسيرفر (بيرجّع 422 تحت `errors.amount`).
  int get _minBid => widget.currentPrice + 1;

  @override
  void didUpdateWidget(BidControls old) {
    super.didUpdateWidget(old);
    if (old.currentPrice == widget.currentPrice) return;
    // السعر اتحرّك (مزايدتك نجحت أو حد زايد فوقك) — بنمسح المبلغ المكتوب بس
    // لو بقى تحت الحد الأدنى. لو لسه صالح بنسيبه، عشان محدش يفقد اللي كتبه
    // بسبب مزايدة جت من حد تاني وهو بيكتب.
    final typed = int.tryParse(_digitsOnly(_controller.text)) ?? 0;
    if (typed < _minBid) {
      _controller.clear();
      if (_error != null) setState(() => _error = null);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// زيادة سريعة — بتملا الحقل بالسعر الحالي + الخطوة بدل ما تبعت على طول،
  /// فالمزايد بيشوف المبلغ قبل ما يأكّد.
  void _applyStep(int step) {
    setState(() {
      _error = null;
      _controller.text = formatAmount(widget.currentPrice + step);
    });
  }

  void _submit() {
    final t = AppLocalizations.of(context);
    final amount = int.tryParse(_digitsOnly(_controller.text)) ?? 0;
    if (amount < _minBid) {
      setState(() => _error = t.bidBelowMinimum);
      return;
    }
    setState(() => _error = null);
    FocusScope.of(context).unfocus();
    widget.onPlaceBid(amount);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            for (var i = 0; i < _kQuickSteps.length; i++) ...[
              if (i > 0) SizedBox(width: 8.w),
              _QuickStep(
                value: _kQuickSteps[i],
                currency: t.currencyDzd,
                onTap: () => _applyStep(_kQuickSteps[i]),
              ),
            ],
          ],
        ),
        SizedBox(height: 10.h),
        _AmountField(
          controller: _controller,
          hint: t.bidAmountHint(t.currencyDzd),
          hasError: _error != null,
          onChanged: (_) {
            if (_error != null) setState(() => _error = null);
          },
          onSubmitted: (_) => _submit(),
        ),
        SizedBox(height: 6.h),
        Text(
          _error ?? t.minBidHint(formatMoney(_minBid, t.currencyDzd)),
          style: TextStyle(
            fontSize: 10.sp,
            color: _error != null
                ? const Color(0xFFFFB4B4)
                : Colors.white.withValues(alpha: 0.6),
          ),
        ),
        SizedBox(height: 12.h),
        _SubmitButton(
          label: t.submitYourBid,
          loading: widget.placingBid,
          onPressed: _submit,
        ),
      ],
    );
  }
}

/// زرار زيادة سريعة — `+10 000 دج`.
class _QuickStep extends StatelessWidget {
  final int value;
  final String currency;
  final VoidCallback onTap;

  const _QuickStep({
    required this.value,
    required this.currency,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(12.r),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12.r),
          child: Container(
            height: 40.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.18),
                width: 0.8,
              ),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '+${formatMoney(value, currency)}',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// حقل المبلغ — أرقام فقط، بيتجمّع بفواصل آلاف أثناء الكتابة.
class _AmountField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool hasError;
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onSubmitted;

  const _AmountField({
    required this.controller,
    required this.hint,
    required this.hasError,
    required this.onChanged,
    required this.onSubmitted,
  });

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.r),
    borderSide: BorderSide(color: color, width: 0.8),
  );

  @override
  Widget build(BuildContext context) {
    final borderColor = hasError
        ? const Color(0xFFFFB4B4)
        : Colors.white.withValues(alpha: 0.22);

    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      inputFormatters: const [_ThousandsInputFormatter()],
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      textAlign: TextAlign.right,
      style: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 13.sp,
          color: Colors.white.withValues(alpha: 0.5),
        ),
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.08),
        contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        border: _border(borderColor),
        enabledBorder: _border(borderColor),
        focusedBorder: _border(
          hasError ? const Color(0xFFFFB4B4) : Colors.white,
        ),
      ),
    );
  }
}

/// زر تقديم العرض — ذهبي، بيملا عرض الكارت.
class _SubmitButton extends StatelessWidget {
  final String label;
  final bool loading;
  final VoidCallback onPressed;

  const _SubmitButton({
    required this.label,
    required this.loading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: ElevatedButton(
        onPressed: loading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.gold,
          foregroundColor: Colors.white,
          disabledBackgroundColor: AppColors.gold.withValues(alpha: 0.6),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
          ),
        ),
        child: loading
            ? SizedBox(
                width: 20.w,
                height: 20.w,
                child: const CircularProgressIndicator(
                  strokeWidth: 2.5,
                  color: Colors.white,
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Icon(Icons.edit_outlined, size: 17.sp),
                ],
              ),
      ),
    );
  }
}

/// بيسيب الأرقام بس وبيحط فواصل آلاف آمنة مع اتجاه النص أثناء الكتابة.
///
/// المؤشّر بيروح لآخر النص بعد كل تعديل — إدخال مبلغ بيتم من الشمال لليمين
/// مرة واحدة، والتعديل في النص بيكون بالمسح من الآخر.
class _ThousandsInputFormatter extends TextInputFormatter {
  const _ThousandsInputFormatter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final digits = _digitsOnly(newValue.text);
    if (digits.isEmpty) return TextEditingValue.empty;
    // حرس ضد تجاوز سعة int (64 بت) لو حد فضل يدوس أرقام.
    if (digits.length > 15) return oldValue;

    final text = formatAmount(int.parse(digits));
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}

String _digitsOnly(String s) => s.replaceAll(RegExp(r'[^0-9]'), '');
