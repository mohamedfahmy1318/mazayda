import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/primary_button.dart';

/// قيم الزيادة المتاحة (بالدينار الكامل).
const _kBidSteps = [50000, 100000, 250000];

/// أدوات المزايدة: اختيار الخطوة + زر تقديم المزايدة بالمبلغ التالي.
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
  int _step = _kBidSteps.first;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final nextAmount = widget.currentPrice + _step;
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: const BoxDecoration(
        color: AppColors.background,
        border: Border(top: BorderSide(color: AppColors.border, width: 0.5)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              for (var i = 0; i < _kBidSteps.length; i++) ...[
                if (i > 0) SizedBox(width: 8.w),
                _BidStepButton(
                  value: _kBidSteps[i],
                  selected: _step == _kBidSteps[i],
                  onTap: () => setState(() => _step = _kBidSteps[i]),
                ),
              ],
            ],
          ),
          SizedBox(height: 10.h),
          PrimaryButton(
            label: t.placeBidAmount(
              '${_formatThousands(nextAmount)} ${t.currencyDzd}',
            ),
            icon: Icons.gavel,
            isLoading: widget.placingBid,
            onPressed: () => widget.onPlaceBid(nextAmount),
          ),
        ],
      ),
    );
  }
}

class _BidStepButton extends StatelessWidget {
  final int value;
  final bool selected;
  final VoidCallback onTap;

  const _BidStepButton({
    required this.value,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 38.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selected ? AppColors.primary : AppColors.white,
            borderRadius: BorderRadius.circular(11.r),
            border: Border.all(color: AppColors.primary, width: 0.5),
          ),
          child: Text(
            '+${_formatThousands(value)}',
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: selected ? AppColors.white : AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}

/// تنسيق رقم بفواصل الآلاف (محلي — مستقل عن لغة العرض للحفاظ على نفس الشكل).
String _formatThousands(int n) {
  final s = n.toString();
  final buf = StringBuffer();
  for (int i = 0; i < s.length; i++) {
    if (i > 0 && (s.length - i) % 3 == 0) buf.write(',');
    buf.write(s[i]);
  }
  return buf.toString();
}
