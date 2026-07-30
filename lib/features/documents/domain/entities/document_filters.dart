import 'package:equatable/equatable.dart';
import 'document.dart';

/// فترات جاهزة — `DocumentFilters::PRESETS` في الباك.
/// `custom` مش قيمة بتتبعت، الباك بيرجّعها لما يكون فيه from/to.
enum DocumentDatePreset { all, today, last7d, last30d, thisMonth, thisYear }

extension DocumentDatePresetX on DocumentDatePreset {
  String get apiValue => switch (this) {
    DocumentDatePreset.all => 'all',
    DocumentDatePreset.today => 'today',
    DocumentDatePreset.last7d => '7d',
    DocumentDatePreset.last30d => '30d',
    DocumentDatePreset.thisMonth => 'this_month',
    DocumentDatePreset.thisYear => 'this_year',
  };
}

/// ترتيب النتائج — `DocumentFilters::SORTS`.
enum DocumentSort { recent, oldest, auction }

extension DocumentSortX on DocumentSort {
  String get apiValue => name;
}

/// حالة الفلترة — تطابق `App\Support\DocumentFilters`.
class DocumentFilters extends Equatable {
  final String? search;
  final List<DocumentType> types;
  final DocumentDatePreset preset;
  final DateTime? from;
  final DateTime? to;
  final int? categoryId;
  final int? wilayaId;
  final String? entityId;
  final DocumentSort sort;

  const DocumentFilters({
    this.search,
    this.types = const [],
    this.preset = DocumentDatePreset.all,
    this.from,
    this.to,
    this.categoryId,
    this.wilayaId,
    this.entityId,
    this.sort = DocumentSort.recent,
  });

  /// المستخدم حدّد مدى زمني يدوي.
  ///
  /// ⚠️ قاعدة الباك: لو `from` أو `to` موجود، الـ `preset` **بيتجاهل تمامًا**
  /// وبيتحوّل لـ `custom`. فبنبعت واحد بس منهم عشان الواجهة تفضل صادقة.
  bool get hasCustomRange => from != null || to != null;

  bool get isActive =>
      (search?.isNotEmpty ?? false) ||
      types.isNotEmpty ||
      preset != DocumentDatePreset.all ||
      hasCustomRange ||
      categoryId != null ||
      wilayaId != null ||
      entityId != null;

  /// عدد الفلاتر النشطة — يظهر كـ badge على زر التصفية.
  int get activeCount =>
      (types.isNotEmpty ? 1 : 0) +
      (preset != DocumentDatePreset.all || hasCustomRange ? 1 : 0) +
      (categoryId != null ? 1 : 0) +
      (wilayaId != null ? 1 : 0) +
      (entityId != null ? 1 : 0);

  DocumentFilters copyWith({
    String? search,
    List<DocumentType>? types,
    DocumentDatePreset? preset,
    DateTime? from,
    DateTime? to,
    int? categoryId,
    int? wilayaId,
    String? entityId,
    DocumentSort? sort,
    bool clearRange = false,
    bool clearCategory = false,
    bool clearWilaya = false,
    bool clearEntity = false,
  }) {
    return DocumentFilters(
      search: search ?? this.search,
      types: types ?? this.types,
      preset: preset ?? this.preset,
      from: clearRange ? null : (from ?? this.from),
      to: clearRange ? null : (to ?? this.to),
      categoryId: clearCategory ? null : (categoryId ?? this.categoryId),
      wilayaId: clearWilaya ? null : (wilayaId ?? this.wilayaId),
      entityId: clearEntity ? null : (entityId ?? this.entityId),
      sort: sort ?? this.sort,
    );
  }

  @override
  List<Object?> get props => [
    search,
    types,
    preset,
    from,
    to,
    categoryId,
    wilayaId,
    entityId,
    sort,
  ];
}
