import 'package:flutter/material.dart';

/// الأيقونات اللي اتجاهها بيتغيّر مع اتجاه اللغة.
///
/// **القاعدة: مفيش `isRtl ? ... : ...` مع الأيقونات دي خالص.**
///
/// أيقونات الأسهم في Material معرّفة بـ`matchTextDirection: true`، يعني
/// `Icon` بيقلبها أفقيًا لوحده لما الاتجاه يبقى RTL (بيلفّها بـ`Transform`
/// بمصفوفة `scaleX(-1)`). فلو إحنا كمان بدّلنا الأيقونة بإيدينا، بيحصل
/// **قلب مرتين** والنتيجة سهم بيشاور عكس الصح:
///
/// ```dart
/// // غلط — في العربي بيطلع سهم شمال، والرجوع في RTL بيشاور يمين.
/// Icon(isRtl ? Icons.arrow_forward : Icons.arrow_back)
///
/// // صح — Flutter بيقلبه لوحده.
/// Icon(AppIcons.back)
/// ```
///
/// نفس الكلام على المواضع: استخدم `PositionedDirectional` و`start/end`
/// و`EdgeInsetsDirectional`، مش `left/right`، عشان الزرار يقعد في أول
/// الشاشة بالنسبة للغة مش في ناحية ثابتة.
class AppIcons {
  AppIcons._();

  /// رجوع للخلف. بيشاور شمال في اللاتيني ويمين في العربي — تلقائيًا.
  static const IconData back = Icons.arrow_back_rounded;

  /// نفس [back] بشكل iOS (سهم رفيع).
  static const IconData backIos = Icons.arrow_back_ios_new_rounded;

  /// للأمام / الخطوة اللي بعدها.
  static const IconData forward = Icons.arrow_forward_rounded;

  /// «افتح التفاصيل» في نهاية كارت أو صف قائمة.
  static const IconData openDetails = Icons.arrow_forward_rounded;

  /// شيفرون نهاية الصف (أصغر وأخف من السهم).
  static const IconData chevronForward = Icons.chevron_right_rounded;

  /// نفس [chevronForward] بشكل iOS.
  static const IconData chevronForwardIos = Icons.arrow_forward_ios_rounded;
}
