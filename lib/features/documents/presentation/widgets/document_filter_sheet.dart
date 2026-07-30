import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../domain/entities/document.dart';
import '../../domain/entities/document_filter_options.dart';
import '../../domain/entities/document_filters.dart';

/// نص نوع الوثيقة للفلتر.
///
/// ملاحظة: القائمة نفسها بتعرض `type_label` الجاي من السيرفر، لكن شرائح
/// الفلتر لازمها أسماء للأنواع اللي المستخدم ملوش وثائق منها — فبنترجمها محليًا.
String documentTypeLabel(DocumentType type, AppLocalizations t) =>
    switch (type) {
      DocumentType.conditionBook => t.docTypeConditionBook,
      DocumentType.award => t.docTypeAward,
      DocumentType.paymentReceipt => t.docTypeReceipt,
      DocumentType.deliveryReport => t.docTypeDelivery,
      _ => '—',
    };

String _presetLabel(DocumentDatePreset p, AppLocalizations t) => switch (p) {
  DocumentDatePreset.all => t.docsPresetAll,
  DocumentDatePreset.today => t.docsPresetToday,
  DocumentDatePreset.last7d => t.docsPreset7d,
  DocumentDatePreset.last30d => t.docsPreset30d,
  DocumentDatePreset.thisMonth => t.docsPresetMonth,
  DocumentDatePreset.thisYear => t.docsPresetYear,
};

String _sortLabel(DocumentSort s, AppLocalizations t) => switch (s) {
  DocumentSort.recent => t.docsSortRecent,
  DocumentSort.oldest => t.docsSortOldest,
  DocumentSort.auction => t.docsSortAuction,
};

/// ورقة تصفية الوثائق — النوع + الفترة + الفئة + الولاية + الجهة + الترتيب.
///
/// شرائح الفئة/الولاية/الجهة بتيجي من `GET /documents/filters` (BE-4)،
/// وهي **مقيّدة بوثائق المستخدم** — عشان كده بتظهر بس لما يكون فيه خيارات
/// فعلًا: مفيش معنى لفلتر بولاية المستخدم ملوش فيها ولا وثيقة.
class DocumentFilterSheet extends StatefulWidget {
  final DocumentFilters initial;

  /// الخيارات المتاحة — فاضية = ما نعرضش الشرائح دي.
  final DocumentFilterOptions options;

  final ValueChanged<DocumentFilters> onApply;

  const DocumentFilterSheet({
    super.key,
    required this.initial,
    required this.onApply,
    this.options = DocumentFilterOptions.empty,
  });

  @override
  State<DocumentFilterSheet> createState() => _DocumentFilterSheetState();
}

class _DocumentFilterSheetState extends State<DocumentFilterSheet> {
  late DocumentFilters _draft = widget.initial;

  void _toggleType(DocumentType type) {
    final types = [..._draft.types];
    types.contains(type) ? types.remove(type) : types.add(type);
    setState(() => _draft = _draft.copyWith(types: types));
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Container(
      padding: EdgeInsets.fromLTRB(18.w, 12.h, 18.w, 18.h),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(22.r)),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 38.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.borderStrong,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
            ),
            Gap(14.h),
            Text(
              t.docsFilters,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            Gap(14.h),

            _Label(t.docsType),
            Wrap(
              spacing: 7.w,
              runSpacing: 7.h,
              children: [
                for (final type in DocumentTypeX.filterable)
                  _Chip(
                    label: documentTypeLabel(type, t),
                    selected: _draft.types.contains(type),
                    onTap: () => _toggleType(type),
                  ),
              ],
            ),
            Gap(14.h),

            _Label(t.docsPeriod),
            Wrap(
              spacing: 7.w,
              runSpacing: 7.h,
              children: [
                for (final p in DocumentDatePreset.values)
                  _Chip(
                    label: _presetLabel(p, t),
                    // مدى مخصّص يلغي الـ preset (نفس قاعدة الباك).
                    selected: !_draft.hasCustomRange && _draft.preset == p,
                    onTap: () => setState(
                      () => _draft = _draft.copyWith(
                        preset: p,
                        clearRange: true,
                      ),
                    ),
                  ),
              ],
            ),
            Gap(14.h),

            // ===== خيارات BE-4 — بتظهر بس لو المستخدم عنده وثائق منها =====
            // اختيار واحد لكل مجموعة (الباك بياخد `category_id` واحد، مش
            // مصفوفة)، والضغط على الشريحة المختارة بيلغي الاختيار.
            if (widget.options.categories.isNotEmpty) ...[
              _Label(t.docsCategory),
              Wrap(
                spacing: 7.w,
                runSpacing: 7.h,
                children: [
                  for (final c in widget.options.categories)
                    _Chip(
                      label: c.name,
                      selected: _draft.categoryId == c.id,
                      onTap: () => setState(() {
                        _draft = _draft.categoryId == c.id
                            ? _draft.copyWith(clearCategory: true)
                            : _draft.copyWith(categoryId: c.id);
                      }),
                    ),
                ],
              ),
              Gap(14.h),
            ],

            if (widget.options.wilayas.isNotEmpty) ...[
              _Label(t.wilaya),
              Wrap(
                spacing: 7.w,
                runSpacing: 7.h,
                children: [
                  for (final w in widget.options.wilayas)
                    _Chip(
                      label: w.name,
                      selected: _draft.wilayaId == w.id,
                      onTap: () => setState(() {
                        _draft = _draft.wilayaId == w.id
                            ? _draft.copyWith(clearWilaya: true)
                            : _draft.copyWith(wilayaId: w.id);
                      }),
                    ),
                ],
              ),
              Gap(14.h),
            ],

            if (widget.options.entities.isNotEmpty) ...[
              _Label(t.docsEntity),
              Wrap(
                spacing: 7.w,
                runSpacing: 7.h,
                children: [
                  for (final e in widget.options.entities)
                    _Chip(
                      label: e.name,
                      selected: _draft.entityId == e.id,
                      onTap: () => setState(() {
                        _draft = _draft.entityId == e.id
                            ? _draft.copyWith(clearEntity: true)
                            : _draft.copyWith(entityId: e.id);
                      }),
                    ),
                ],
              ),
              Gap(14.h),
            ],

            _Label(t.docsSort),
            Wrap(
              spacing: 7.w,
              runSpacing: 7.h,
              children: [
                for (final s in DocumentSort.values)
                  _Chip(
                    label: _sortLabel(s, t),
                    selected: _draft.sort == s,
                    onTap: () =>
                        setState(() => _draft = _draft.copyWith(sort: s)),
                  ),
              ],
            ),
            Gap(18.h),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      widget.onApply(DocumentFilters(search: _draft.search));
                      Navigator.pop(context);
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.textSecondary,
                      side: const BorderSide(color: AppColors.border),
                      padding: EdgeInsets.symmetric(vertical: 13.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                    ),
                    child: Text(
                      t.docsClearFilters,
                      style: TextStyle(fontSize: 13.sp),
                    ),
                  ),
                ),
                Gap(10.w),
                Expanded(
                  flex: 2,
                  child: PrimaryButton(
                    label: t.docsApply,
                    onPressed: () {
                      widget.onApply(_draft);
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Label extends StatelessWidget {
  final String text;
  const _Label(this.text);

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(bottom: 7.h),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
      ),
    ),
  );
}

class _Chip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _Chip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary : AppColors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: selected ? AppColors.primary : AppColors.border,
            width: 0.5,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
            color: selected ? AppColors.white : AppColors.textSecondary,
          ),
        ),
      ),
    );
  }
}
