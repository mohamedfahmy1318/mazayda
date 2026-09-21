import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_assets.dart';
import '../constants/app_colors.dart';

/// شعار المنصة في الواجهة — تعديل العميل رقم 18.
///
/// نقطة واحدة لكل أماكن الشعار (الـ splash، ورأس شاشات الدخول، ورأس
/// الرئيسية) بدل أيقونة مكررة في تلات ملفات. تغيير الشعار بقى **استبدال
/// ملف** مش تعديل كود.
///
/// لو ملف الشعار مش موجود بعد، بنرجع لأيقونة المطرقة — فالتطبيق مايكسرش
/// والشكل يفضل زي ما هو لحد ما الملف يتحط في `assets/logo/`.
class BrandMark extends StatelessWidget {
  /// طول ضلع المربّع (قبل `.w`).
  final double size;

  /// نصف قطر الحواف (قبل `.r`).
  final double radius;

  /// خلفية شفافة فاتحة تحت الشعار — مناسبة للرؤوس الداكنة.
  /// `false` بيستخدم النسخة الملوّنة من الشعار (لخلفية فاتحة).
  final bool onDarkSurface;

  /// لون لوحة الشعار — بيتجاوز الافتراضي لما التصميم عايز لون صريح
  /// (الـ splash مثلًا بيستخدم لوحة بيضا صريحة).
  final Color? background;

  const BrandMark({
    super.key,
    this.size = 42,
    this.radius = 14,
    this.onDarkSurface = true,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    final side = size.w;

    return Container(
      width: side,
      height: side,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:
            background ??
            (onDarkSurface
                ? AppColors.white.withValues(alpha: 0.12)
                : AppColors.primary.withValues(alpha: 0.08)),
        borderRadius: BorderRadius.circular(radius.r),
        border: onDarkSurface && background == null
            ? Border.all(color: AppColors.white.withValues(alpha: 0.14))
            : null,
      ),
      child: Padding(
        padding: EdgeInsets.all(side * 0.18),
        child: Image.asset(
          onDarkSurface ? AppAssets.logoWhite : AppAssets.logo,
          fit: BoxFit.contain,
          // الشعار الجديد لسه ما اتسلّمش — الأيقونة دي هي اللي بتظهر لحد
          // ما الملف يتحط، من غير ما الشاشة تكسر.
          errorBuilder: (_, _, _) => Icon(
            Icons.gavel_rounded,
            size: side * 0.55,
            color: onDarkSurface ? AppColors.gold : AppColors.primary,
          ),
        ),
      ),
    );
  }
}
