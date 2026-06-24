import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// دائرة بأيقونة في وسطها — تُستخدم كرأس لشاشات الـ auth (الدخول، تأكيد البريد).
class AuthCircleBadge extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color backgroundColor;
  final double radius;
  final double? iconSize;

  const AuthCircleBadge({
    super.key,
    required this.icon,
    required this.color,
    required this.backgroundColor,
    this.radius = 32,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius.r,
      backgroundColor: backgroundColor,
      child: Icon(icon, size: (iconSize ?? radius).sp, color: color),
    );
  }
}
