import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

/// عرض صورة موحّد — يتعامل مع الصور من الإنترنت أو من الـ assets،
/// مع placeholder وأيقونة بديلة لو فشل التحميل (يمنع الكراش).
class AppImage extends StatelessWidget {
  final String? url; // صورة من الإنترنت
  final String? asset; // صورة محلية
  final double? width;
  final double? height;
  final BoxFit fit;
  final double radius;
  final IconData fallbackIcon;

  const AppImage({
    super.key,
    this.url,
    this.asset,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.radius = 0,
    this.fallbackIcon = Icons.image_outlined,
  });

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (url != null && url!.isNotEmpty) {
      child = CachedNetworkImage(
        imageUrl: url!,
        width: width,
        height: height,
        fit: fit,
        placeholder: (_, _) => _skeleton(),
        errorWidget: (_, _, _) => _fallback(),
      );
    } else if (asset != null && asset!.isNotEmpty) {
      child = Image.asset(
        asset!,
        width: width,
        height: height,
        fit: fit,
        // لو الـ asset مش موجود، اعرض البديل بدل الكراش
        errorBuilder: (_, _, _) => _fallback(),
      );
    } else {
      child = _fallback();
    }

    return radius > 0
        ? ClipRRect(borderRadius: BorderRadius.circular(radius), child: child)
        : child;
  }

  Widget _skeleton() => Container(
        width: width,
        height: height,
        color: AppColors.border,
      );

  Widget _fallback() => Container(
        width: width,
        height: height,
        color: AppColors.background,
        alignment: Alignment.center,
        child: Icon(fallbackIcon, color: AppColors.textHint, size: 28),
      );
}
