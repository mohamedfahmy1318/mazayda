import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/document.dart';

/// شكل النوع (لون + أيقونة) — طبقة العرض.
({Color fg, Color bg, IconData icon}) _style(DocumentType type) =>
    switch (type) {
      DocumentType.conditionBook => (
        fg: AppColors.info,
        bg: AppColors.infoBg,
        icon: Icons.menu_book_outlined,
      ),
      DocumentType.award => (
        fg: AppColors.warning,
        bg: AppColors.warningBg,
        icon: Icons.emoji_events_outlined,
      ),
      DocumentType.paymentReceipt => (
        fg: AppColors.success,
        bg: AppColors.successBg,
        icon: Icons.receipt_long_outlined,
      ),
      DocumentType.deliveryReport => (
        fg: AppColors.primary,
        bg: AppColors.successBg,
        icon: Icons.local_shipping_outlined,
      ),
      DocumentType.participationReceipt => (
        fg: AppColors.primary,
        bg: AppColors.infoBg,
        icon: Icons.confirmation_number_outlined,
      ),
      DocumentType.auctionResult => (
        fg: AppColors.gold,
        bg: AppColors.warningBg,
        icon: Icons.fact_check_outlined,
      ),
      _ => (
        fg: AppColors.neutral,
        bg: AppColors.neutralBg,
        icon: Icons.description_outlined,
      ),
    };

/// بطاقة وثيقة — النوع والعنوان وسياق المزاد والحجم + زر التحميل.
class DocumentCard extends StatelessWidget {
  final UserDocument document;

  /// بيتنزّل دلوقتي — نعرض مؤشّر بدل أيقونة التحميل.
  final bool isDownloading;

  final VoidCallback onDownload;
  final VoidCallback? onVerify;

  const DocumentCard({
    super.key,
    required this.document,
    required this.isDownloading,
    required this.onDownload,
    this.onVerify,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final s = _style(document.type);
    final auction = document.auction;

    return Container(
      margin: EdgeInsets.only(bottom: 9.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(13.r),
        border: Border.all(color: AppColors.border, width: 0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40.w,
                height: 40.w,
                decoration: BoxDecoration(
                  color: s.bg,
                  borderRadius: BorderRadius.circular(11.r),
                ),
                child: Icon(s.icon, size: 20.sp, color: s.fg),
              ),
              Gap(10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // النوع بنص السيرفر المترجَم — مش جدول محلي.
                    Text(
                      document.typeLabel,
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: s.fg,
                      ),
                    ),
                    Gap(2.h),
                    Text(
                      document.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    if (auction != null) ...[
                      Gap(3.h),
                      Text(
                        auction.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              Gap(6.w),
              _DownloadButton(
                isDownloading: isDownloading,
                onTap: onDownload,
              ),
            ],
          ),
          Gap(9.h),
          Row(
            children: [
              if (document.issuedAt != null) ...[
                Icon(
                  Icons.event_outlined,
                  size: 12.sp,
                  color: AppColors.textHint,
                ),
                Gap(3.w),
                Text(
                  DateFormat('yyyy/MM/dd').format(document.issuedAt!),
                  style: TextStyle(fontSize: 10.sp, color: AppColors.textHint),
                ),
                Gap(10.w),
              ],
              if (document.fileSizeHuman.isNotEmpty) ...[
                Icon(
                  Icons.insert_drive_file_outlined,
                  size: 12.sp,
                  color: AppColors.textHint,
                ),
                Gap(3.w),
                Text(
                  document.fileSizeHuman,
                  style: TextStyle(fontSize: 10.sp, color: AppColors.textHint),
                ),
              ],
              const Spacer(),
              // صفحة التحقق عامة (HTML) — تُفتح بدون مصادقة.
              if (document.isVerifiable && onVerify != null)
                GestureDetector(
                  onTap: onVerify,
                  child: Row(
                    children: [
                      Icon(
                        Icons.verified_outlined,
                        size: 13.sp,
                        color: AppColors.primary,
                      ),
                      Gap(3.w),
                      Text(
                        t.docsVerify,
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _DownloadButton extends StatelessWidget {
  final bool isDownloading;
  final VoidCallback onTap;

  const _DownloadButton({required this.isDownloading, required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (isDownloading) {
      return SizedBox(
        width: 34.w,
        height: 34.w,
        child: Center(
          child: SizedBox(
            width: 17.w,
            height: 17.w,
            child: const CircularProgressIndicator(strokeWidth: 2.2),
          ),
        ),
      );
    }
    return IconButton(
      onPressed: onTap,
      iconSize: 20.sp,
      color: AppColors.primary,
      constraints: BoxConstraints(minWidth: 34.w, minHeight: 34.w),
      padding: EdgeInsets.zero,
      icon: const Icon(Icons.download_outlined),
    );
  }
}
