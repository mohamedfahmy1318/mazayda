import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/utils/locale_cubit.dart';

/// مبدّل اللغة (عربي / فرنسي / إنجليزي) المرتبط بالـ [LocaleCubit].
class ProfileLanguageSwitcher extends StatelessWidget {
  const ProfileLanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final localeCubit = getIt<LocaleCubit>();
    return Container(
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: AppColors.border.withValues(alpha: 0.82)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF102A21).withValues(alpha: 0.045),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 36.w,
                height: 36.w,
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.075),
                  borderRadius: BorderRadius.circular(11.r),
                ),
                child: Icon(
                  Icons.language_rounded,
                  size: 18.sp,
                  color: AppColors.primary,
                ),
              ),
              Gap(9.w),
              Text(
                t.language,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          Gap(10.h),
          Row(
            children: [
              _LangChip(localeCubit, 'ar', t.languageArabic),
              Gap(8.w),
              _LangChip(localeCubit, 'fr', t.languageFrench),
              Gap(8.w),
              _LangChip(localeCubit, 'en', t.languageEnglish),
            ],
          ),
        ],
      ),
    );
  }
}

class _LangChip extends StatelessWidget {
  final LocaleCubit cubit;
  final String code;
  final String label;

  const _LangChip(this.cubit, this.code, this.label);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<LocaleCubit, Locale>(
        bloc: cubit,
        builder: (context, locale) {
          final selected = locale.languageCode == code;
          return Semantics(
            button: true,
            selected: selected,
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(11.r),
              child: InkWell(
                onTap: () => cubit.setLocale(code),
                borderRadius: BorderRadius.circular(11.r),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeOutCubic,
                  height: 40.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: selected
                        ? AppColors.primary
                        : AppColors.background.withValues(alpha: 0.75),
                    borderRadius: BorderRadius.circular(11.r),
                    border: Border.all(
                      color: selected ? AppColors.primary : AppColors.border,
                    ),
                    boxShadow: selected
                        ? [
                            BoxShadow(
                              color: AppColors.primary.withValues(alpha: 0.16),
                              blurRadius: 9,
                              offset: const Offset(0, 4),
                            ),
                          ]
                        : null,
                  ),
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 180),
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 11.sp,
                      fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                      color: selected ? Colors.white : AppColors.textSecondary,
                    ),
                    child: Text(
                      label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
