import 'package:flutter/material.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../constants/app_colors.dart';

/// الهيكل الرئيسي مع الـ Bottom Navigation الثابت.
/// يستخدم StatefulNavigationShell ليحفظ حالة كل تبويب على حدة.
class MainShell extends StatelessWidget {
  final StatefulNavigationShell shell;
  const MainShell({super.key, required this.shell});

  void _onTap(int index) {
    // الانتقال للفرع المطلوب؛ الضغط على نفس التبويب يرجّع لجذره
    shell.goBranch(
      index,
      initialLocation: index == shell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final items = [
      (_NavItem(Icons.gavel_outlined, Icons.gavel, t.navHome)),
      (_NavItem(Icons.list_alt_outlined, Icons.list_alt, t.navMyAuctions)),
      (_NavItem(
          Icons.notifications_outlined, Icons.notifications, t.notifications)),
      (_NavItem(Icons.person_outline, Icons.person, t.navProfile)),
    ];

    return Scaffold(
      body: shell,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 12,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(items.length, (i) {
                final selected = shell.currentIndex == i;
                return _NavButton(
                  item: items[i],
                  selected: selected,
                  onTap: () => _onTap(i),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavItem {
  final IconData icon;
  final IconData activeIcon;
  final String label;
  const _NavItem(this.icon, this.activeIcon, this.label);
}

class _NavButton extends StatelessWidget {
  final _NavItem item;
  final bool selected;
  final VoidCallback onTap;

  const _NavButton({
    required this.item,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOut,
          padding: EdgeInsets.symmetric(vertical: 7.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // مؤشّر علوي صغير للتبويب النشط
              AnimatedContainer(
                duration: const Duration(milliseconds: 220),
                width: selected ? 20.w : 0,
                height: 3.h,
                margin: EdgeInsets.only(bottom: 5.h),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
              Icon(
                selected ? item.activeIcon : item.icon,
                size: 23.sp,
                color: selected ? AppColors.primary : AppColors.textHint,
              ),
              SizedBox(height: 3.h),
              Text(
                item.label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                  color: selected ? AppColors.primary : AppColors.textHint,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
