import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// حقل نصّي معنون مع رسالة خطأ اختيارية (يُستخدم لكل حقول فورم الـ KYC).
class KycTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? errorText;

  const KycTextField({
    super.key,
    required this.label,
    required this.controller,
    this.keyboardType,
    this.errorText,
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
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 6.h),
          TextField(
            controller: controller,
            keyboardType: keyboardType,
            decoration: InputDecoration(errorText: errorText),
          ),
        ],
      ),
    );
  }
}
