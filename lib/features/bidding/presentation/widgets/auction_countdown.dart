import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';

/// عدّاد تنازلي لإقفال المزاد — خانة لكل وحدة زمنية.
///
/// بيدقّ محليًا كل ثانية بدل ما يعدّي كل tick على الـ cubit: العدّ مالوش أي
/// أثر على حالة المزايدة، وإعادة بناء الشاشة كلها كل ثانية هدر.
///
/// خانة الأيام بتظهر بس لما يكون فاضل أكتر من ٢٤ ساعة — التصميم فيه تلات
/// خانات (ساعة/دقيقة/ثانية) وده الشكل الغالب، لكن من غيرها مزاد فاضله
/// خمس تيام كان هيبان وكأنه فاضله ساعات.
class AuctionCountdown extends StatefulWidget {
  final DateTime endTime;

  /// اتصفّر العدّاد — الشاشة بتعيد القراءة من السيرفر بدل ما تفضل تعدّ سالب.
  final VoidCallback? onFinished;

  const AuctionCountdown({super.key, required this.endTime, this.onFinished});

  @override
  State<AuctionCountdown> createState() => _AuctionCountdownState();
}

class _AuctionCountdownState extends State<AuctionCountdown> {
  Timer? _timer;
  late Duration _left;

  @override
  void initState() {
    super.initState();
    _left = _remaining();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
  }

  @override
  void didUpdateWidget(AuctionCountdown old) {
    super.didUpdateWidget(old);
    // السيرفر مدّد المزاد (أو رجع وقت مختلف) — نعيد الضبط فورًا.
    if (old.endTime != widget.endTime) setState(() => _left = _remaining());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Duration _remaining() {
    final diff = widget.endTime.difference(DateTime.now());
    return diff.isNegative ? Duration.zero : diff;
  }

  void _tick() {
    final left = _remaining();
    final justFinished = left == Duration.zero && _left != Duration.zero;
    if (mounted) setState(() => _left = left);
    if (justFinished) {
      _timer?.cancel();
      widget.onFinished?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final days = _left.inDays;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Row(
        children: [
          // في RTL أول عنصر بيقع على اليمين — فالترتيب ده بيدّي
          // يوم · ساعة · دقيقة · ثانية من اليمين للشمال زي التصميم.
          if (days > 0) _Unit(value: days, label: t.unitDays),
          _Unit(value: _left.inHours % 24, label: t.unitHours),
          _Unit(value: _left.inMinutes % 60, label: t.unitMinutes),
          _Unit(value: _left.inSeconds % 60, label: t.unitSeconds),
        ],
      ),
    );
  }
}

class _Unit extends StatelessWidget {
  final int value;
  final String label;

  const _Unit({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value.toString().padLeft(2, '0'),
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              height: 1.1,
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            label,
            style: TextStyle(
              fontSize: 10.sp,
              color: Colors.white.withValues(alpha: 0.65),
            ),
          ),
        ],
      ),
    );
  }
}
