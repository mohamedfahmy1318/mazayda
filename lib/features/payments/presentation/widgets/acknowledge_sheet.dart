import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../auctions/domain/entities/auction.dart';

/// bottom sheet لإقرار كراس الشروط قبل التسجيل.
/// يرجّع true لو وافق وضغط المتابعة.
class AcknowledgeSheet extends StatefulWidget {
  final Auction auction;
  final bool isLoading;
  final VoidCallback onConfirm;

  const AcknowledgeSheet({
    super.key,
    required this.auction,
    required this.isLoading,
    required this.onConfirm,
  });

  @override
  State<AcknowledgeSheet> createState() => _AcknowledgeSheetState();
}

class _AcknowledgeSheetState extends State<AcknowledgeSheet> {
  bool _agreed = false;

  @override
  Widget build(BuildContext context) {
    final a = widget.auction;
    return Container(
      padding: EdgeInsets.fromLTRB(18.w, 12.h, 18.w, 18.h),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(22.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 38.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: AppColors.borderStrong,
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),
          SizedBox(height: 16.h),
          CircleAvatar(
            radius: 27.r,
            backgroundColor: AppColors.successBg,
            child: Icon(Icons.fact_check_outlined,
                size: 28.sp, color: AppColors.success),
          ),
          SizedBox(height: 10.h),
          Text('إقرار كراس الشروط',
              style: TextStyle(
                  fontSize: 16.sp, fontWeight: FontWeight.w500)),
          SizedBox(height: 4.h),
          Text(
            'يجب الإقرار بقراءة كراس الشروط قبل بدء التسجيل (الخطوة 1 من 2)',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12.sp, color: AppColors.textSecondary, height: 1.6),
          ),
          SizedBox(height: 16.h),
          // ملخص الرسوم
          Container(
            padding: EdgeInsets.all(14.w),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColors.border, width: 0.5),
            ),
            child: Column(
              children: [
                _row('التأمين القابل للاسترداد', a.depositAmount.formatted),
                _row('رسوم المشاركة (غير مستردة)', a.entryFee.formatted),
                if (a.bookPrice != null)
                  _row('كراس الشروط (غير مسترد)', a.bookPrice!.formatted),
              ],
            ),
          ),
          SizedBox(height: 14.h),
          // الموافقة
          InkWell(
            onTap: () => setState(() => _agreed = !_agreed),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 22.w,
                  height: 22.w,
                  decoration: BoxDecoration(
                    color: _agreed ? AppColors.primary : AppColors.white,
                    borderRadius: BorderRadius.circular(7.r),
                    border: Border.all(color: AppColors.primary, width: 1.5),
                  ),
                  child: _agreed
                      ? Icon(Icons.check, size: 15.sp, color: Colors.white)
                      : null,
                ),
                SizedBox(width: 9.w),
                Expanded(
                  child: Text(
                    'أقرّ بأنني قرأت كراس الشروط وأوافق على شروط المشاركة',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.textSecondary,
                        height: 1.5),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          PrimaryButton(
            label: 'المتابعة للدفع',
            icon: Icons.open_in_new,
            isLoading: widget.isLoading,
            onPressed: _agreed ? widget.onConfirm : null,
          ),
          SizedBox(height: 8.h),
          Text(
            'سيتم فتح بوابة الدفع الآمنة (CIBWeb)',
            style: TextStyle(fontSize: 10.sp, color: AppColors.textHint),
          ),
        ],
      ),
    );
  }

  Widget _row(String label, String value) => Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label,
                style: TextStyle(
                    fontSize: 12.sp, color: AppColors.textSecondary)),
            Text(value,
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimary)),
          ],
        ),
      );
}
