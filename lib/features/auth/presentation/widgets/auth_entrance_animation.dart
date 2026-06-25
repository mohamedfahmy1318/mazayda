import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

/// دخول موحّد لعناصر شاشات الـ auth: ظهور تدريجي + تكبير لطيف (easeOutBack).
/// بيشيل تكرار نفس بلوك [fadeIn] + [scale] في أكتر من شاشة.
extension AuthEntranceAnimation on Widget {
  Animate authEntrance({
    Duration duration = const Duration(milliseconds: 400),
    double beginScale = 0.8,
  }) {
    return animate()
        .fadeIn(duration: duration)
        .scale(
          begin: Offset(beginScale, beginScale),
          end: const Offset(1, 1),
          curve: Curves.easeOutBack,
        );
  }
}
