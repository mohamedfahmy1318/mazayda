import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../documents/presentation/widgets/document_download_button.dart';
import '../../../domain/entities/auction.dart';
import 'detail_section.dart';

String _date(DateTime d) => DateFormat('yyyy/MM/dd — HH:mm').format(d);

/// ولابلات الـ enums — منقولة حرفيًا من `lang/ar/enums.php` عبر ملفات ARB
/// عشان تفضل مطابقة للويب.
String assetClassLabel(String? v, AppLocalizations t) => switch (v) {
  'MOVABLE' => t.assetClassMovable,
  'REAL_ESTATE' => t.assetClassRealEstate,
  'CUSTOMS' => t.assetClassCustoms,
  _ => '—',
};

String conditionLabel(String? v, AppLocalizations t) => switch (v) {
  'NEW' => t.conditionNew,
  'GOOD' => t.conditionGood,
  'FAIR' => t.conditionFair,
  'POOR' => t.conditionPoor,
  'SCRAP' => t.conditionScrap,
  _ => '—',
};

String auctionTypeLabel(String v, AppLocalizations t) =>
    v == 'LEASE' ? t.auctionTypeLease : t.auctionTypeSale;

/// المواصفات التي يكتبها المسؤول — العنوان والنص جايين مترجمين من السيرفر.
class AuctionSpecsSection extends StatelessWidget {
  final Auction auction;
  const AuctionSpecsSection({super.key, required this.auction});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    if (auction.specifications.isEmpty) return const SizedBox.shrink();

    return DetailSection(
      title: t.adSpecifications,
      icon: Icons.list_alt_outlined,
      children: [
        for (final (i, spec) in auction.specifications.indexed) ...[
          if (i > 0) Divider(height: 16.h),
          Text(
            spec.title,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
          ),
          Gap(3.h),
          DetailParagraph(text: spec.body),
        ],
      ],
    );
  }
}

/// الأسعار والرسوم — الكفالة مستردّة، كراس الشروط غير مسترد.
class AuctionPricingSection extends StatelessWidget {
  final Auction auction;
  const AuctionPricingSection({super.key, required this.auction});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return DetailSection(
      title: t.adPricing,
      icon: Icons.payments_outlined,
      children: [
        DetailFactRow(
          label: t.openingPrice,
          value: auction.openingPrice.formatted,
        ),
        DetailFactRow(
          label: t.currentPrice,
          value: auction.currentPrice.formatted,
          tone: AppColors.primary,
        ),
        DetailFactRow(
          label: auction.depositPercent > 0
              ? '${t.depositRequired} (${auction.depositPercent.toStringAsFixed(0)}%)'
              : t.depositRequired,
          value: auction.depositAmount.formatted,
        ),
        if (auction.bookPrice != null)
          DetailFactRow(
            label: t.adBookPrice,
            value: auction.bookPrice!.formatted,
          ),
      ],
    );
  }
}

/// بيانات الأصل — الصنف والحالة والعدد والاشتراطات.
class AuctionAssetSection extends StatelessWidget {
  final Auction auction;
  const AuctionAssetSection({super.key, required this.auction});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return DetailSection(
      title: t.adAssetInfo,
      icon: Icons.inventory_2_outlined,
      children: [
        DetailFactRow(
          label: t.adAuctionType,
          value: auctionTypeLabel(auction.auctionType, t),
        ),
        if (auction.assetClass != null)
          DetailFactRow(
            label: t.adAssetClass,
            value: assetClassLabel(auction.assetClass, t),
          ),
        if (auction.condition != null)
          DetailFactRow(
            label: t.adCondition,
            value: conditionLabel(auction.condition, t),
          ),
        if (auction.unitCount != null)
          DetailFactRow(
            label: t.adUnitCount,
            value: '${auction.unitCount}',
          ),
        if (auction.requiresCommerceRegister)
          DetailFactRow(
            label: t.adRequiresCr,
            value: t.adYes,
            tone: AppColors.warning,
          ),
        if (auction.requiresNewspaperAnnouncement)
          DetailFactRow(label: t.adRequiresNewspaper, value: t.adYes),
      ],
    );
  }
}

/// التوقيت — البداية والنهاية وعدد التمديدات.
class AuctionScheduleSection extends StatelessWidget {
  final Auction auction;
  const AuctionScheduleSection({super.key, required this.auction});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final rows = <Widget>[
      if (auction.startTime != null)
        DetailFactRow(label: t.adStartTime, value: _date(auction.startTime!)),
      if (auction.endTime != null)
        DetailFactRow(label: t.adEndTime, value: _date(auction.endTime!)),
      if (auction.wasExtended)
        DetailFactRow(
          label: t.adExtensions,
          value: auction.maxExtensions != null
              ? '${auction.extensionCount} / ${auction.maxExtensions}'
              : '${auction.extensionCount}',
          tone: AppColors.warning,
        ),
    ];
    return DetailSection(
      title: t.adSchedule,
      icon: Icons.schedule,
      children: rows,
    );
  }
}

/// الموقع — البلدية والعنوان ورئيس البلدية + فتح الخرائط.
class AuctionLocationSection extends StatelessWidget {
  final Auction auction;
  const AuctionLocationSection({super.key, required this.auction});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final rows = <Widget>[
      if (auction.wilayaName != null)
        DetailFactRow(label: t.wilaya, value: auction.wilayaName!),
      if (auction.commune != null)
        DetailFactRow(label: t.adCommune, value: auction.commune!.name),
      if (auction.assetLocation != null)
        DetailFactRow(label: t.address, value: auction.assetLocation!),
      if (auction.mayorName != null)
        DetailFactRow(label: t.adMayor, value: auction.mayorName!),
      if (auction.hasCoordinates)
        Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: OutlinedButton.icon(
            onPressed: () => _openMap(auction.latitude!, auction.longitude!),
            icon: Icon(Icons.map_outlined, size: 17.sp),
            label: Text(t.adOpenMap, style: TextStyle(fontSize: 12.sp)),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primary,
              side: const BorderSide(color: AppColors.border),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
        ),
    ];
    return DetailSection(
      title: t.adLocation,
      icon: Icons.place_outlined,
      children: rows,
    );
  }

  Future<void> _openMap(double lat, double lng) async {
    final uri = Uri.parse('https://www.google.com/maps/search/?api=1&query=$lat,$lng');
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}

/// المعاينة — الفترة والمكان وهل هي مفتوحة الآن.
class AuctionInspectionSection extends StatelessWidget {
  final Auction auction;
  const AuctionInspectionSection({super.key, required this.auction});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final ins = auction.inspection;
    if (!ins.hasData) return const SizedBox.shrink();

    return DetailSection(
      title: t.adInspection,
      icon: Icons.fact_check_outlined,
      children: [
        DetailFactRow(
          label: t.adInspectionState,
          value: ins.isOpen ? t.adInspectionOpen : t.adInspectionClosed,
          tone: ins.isOpen ? AppColors.success : AppColors.textSecondary,
        ),
        if (ins.start != null)
          DetailFactRow(label: t.adFrom, value: _date(ins.start!)),
        if (ins.end != null)
          DetailFactRow(label: t.adTo, value: _date(ins.end!)),
        if (ins.location?.isNotEmpty ?? false)
          DetailFactRow(label: t.adInspectionPlace, value: ins.location!),
      ],
    );
  }
}

/// شروط الإيجار — تظهر فقط لمزادات LEASE (المفتاح غايب أصلًا في غيرها).
class AuctionLeaseSection extends StatelessWidget {
  final Auction auction;
  const AuctionLeaseSection({super.key, required this.auction});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final lease = auction.lease;
    if (lease == null) return const SizedBox.shrink();

    return DetailSection(
      title: t.adLease,
      icon: Icons.key_outlined,
      children: [
        if (lease.durationYears != null)
          DetailFactRow(
            label: t.adLeaseDuration,
            value: '${lease.durationYears}',
          ),
        if (lease.renewals != null)
          DetailFactRow(label: t.adLeaseRenewals, value: '${lease.renewals}'),
      ],
    );
  }
}

/// الشروط — شروط المشاركة وشروط الترسية.
class AuctionTermsSection extends StatelessWidget {
  final Auction auction;
  const AuctionTermsSection({super.key, required this.auction});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final hasCondition = auction.conditionTerms?.isNotEmpty ?? false;
    final hasAward = auction.awardTerms?.isNotEmpty ?? false;
    if (!hasCondition && !hasAward) return const SizedBox.shrink();

    return DetailSection(
      title: t.adTerms,
      icon: Icons.gavel_outlined,
      children: [
        if (hasCondition) ...[
          Text(
            t.adConditionTerms,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
          ),
          Gap(3.h),
          DetailParagraph(text: auction.conditionTerms!),
        ],
        if (hasCondition && hasAward) Divider(height: 16.h),
        if (hasAward) ...[
          Text(
            t.adAwardTerms,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
          ),
          Gap(3.h),
          DetailParagraph(text: auction.awardTerms!),
        ],
      ],
    );
  }
}

/// نتيجة المزاد بعد الإغلاق — الفائز والسعر النهائي ومهلة الطعن.
class AuctionResultSection extends StatelessWidget {
  final Auction auction;
  const AuctionResultSection({super.key, required this.auction});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final closed = auction.hasEnded || auction.status == AuctionStatus.closed;
    if (!closed) return const SizedBox.shrink();

    final appeal = auction.appealWindow;
    return DetailSection(
      title: t.adResult,
      icon: Icons.emoji_events_outlined,
      children: [
        DetailFactRow(
          label: t.adWinner,
          value: auction.winnerAlias ?? t.adNoWinner,
          tone: auction.winnerAlias != null ? AppColors.success : null,
        ),
        if (auction.finalPrice != null)
          DetailFactRow(
            label: t.adFinalPrice,
            value: auction.finalPrice!.formatted,
            tone: AppColors.primary,
          ),
        if (appeal.days > 0)
          DetailFactRow(
            label: t.adAppealWindow,
            value: appeal.isOpen
                ? t.adAppealOpen(appeal.days)
                : t.adAppealClosed,
            tone: appeal.isOpen ? AppColors.warning : null,
          ),
        // وثيقة الترسية — الباك بيرجّعها **للفائز فقط**، فوجودها هنا كافٍ
        // للعرض من غير فحص إضافي.
        if (auction.awardDocument?.id != null) ...[
          Gap(10.h),
          DocumentDownloadButton(
            documentId: auction.awardDocument!.id!,
            title: auction.awardDocument!.title ?? t.adAwardDocument,
            label: t.adDownloadAward,
            icon: Icons.workspace_premium_outlined,
          ),
        ],
      ],
    );
  }
}
