import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// قائمة منسدلة معنونة (الولاية/البلدية في فورم الـ KYC).
class KycLabeledDropdown<T> extends StatelessWidget {
  final String label;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?> onChanged;

  const KycLabeledDropdown({
    super.key,
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 6.h),
        DropdownButtonFormField<T>(
          initialValue: value,
          isExpanded: true,
          items: items,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
