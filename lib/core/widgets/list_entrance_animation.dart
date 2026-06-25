import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

/// دخول متدرّج موحّد لعناصر القوائم: ظهور تدريجي + انزلاق خفيف لأعلى،
/// مع تأخير يتناسب مع ترتيب العنصر (مع سقف حتى لا تتأخر العناصر البعيدة).
/// بيشيل تكرار نفس بلوك [fadeIn] + [slideY] في صفحات القوائم.
extension StaggeredListEntrance on Widget {
  Widget staggeredEntrance(
    int index, {
    Duration duration = const Duration(milliseconds: 300),
    Duration step = const Duration(milliseconds: 40),
    int maxStaggerIndex = 8,
    double slideBegin = 0.08,
  }) {
    return animate()
        .fadeIn(
          duration: duration,
          delay: step * index.clamp(0, maxStaggerIndex),
        )
        .slideY(begin: slideBegin, end: 0, curve: Curves.easeOut);
  }
}
