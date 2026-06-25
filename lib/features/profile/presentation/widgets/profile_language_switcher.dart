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
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: AppColors.border, width: 0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.language, size: 19.sp, color: AppColors.primary),
              Gap(8.w),
              Text(
                t.language,
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
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
          return GestureDetector(
            onTap: () => cubit.setLocale(code),
            child: Container(
              height: 40.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: selected ? AppColors.primary : AppColors.white,
                borderRadius: BorderRadius.circular(11.r),
                border: Border.all(color: AppColors.primary, width: 0.8),
              ),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: selected ? Colors.white : AppColors.primary,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
