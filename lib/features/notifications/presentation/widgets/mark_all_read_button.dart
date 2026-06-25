import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';

/// زر "تعليم الكل كمقروء" في شريط الإشعارات.
class MarkAllReadButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MarkAllReadButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(Icons.done_all, size: 16.sp, color: Colors.white),
      label: Text(
        AppLocalizations.of(context).markAllRead,
        style: TextStyle(fontSize: 12.sp, color: Colors.white),
      ),
    );
  }
}
