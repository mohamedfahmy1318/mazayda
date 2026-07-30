import '../../domain/entities/document_filter_options.dart';

/// يطابق `GET /documents/filters` (BE-4).
///
/// مكتوب يدوي مش بـ freezed: الرد مجرد ٣ مصفوفات بسيطة، والـ parsing
/// المتسامح هنا أوضح من توليد ٣ موديلات + الأنواع بتاعتهم.
///
/// الباك بيرجّع كمان `types` و`presets` و`sorts`، وإحنا بنتجاهلهم عن قصد:
/// شرائح النوع/الفترة/الترتيب لازم تظهر **كلها** حتى لو المستخدم ملوش
/// وثائق منها، ونصوصها مترجمة محليًا (راجع `document_filter_sheet.dart`).
class DocumentFilterOptionsModel {
  const DocumentFilterOptionsModel._();

  static DocumentFilterOptions fromJson(Map<String, dynamic> json) {
    return DocumentFilterOptions(
      categories: _numbered(json['categories']),
      wilayas: _numbered(json['wilayas']),
      entities: _entities(json['entities']),
    );
  }

  static List<FilterOption> _numbered(dynamic raw) {
    if (raw is! List) return const [];
    final out = <FilterOption>[];
    for (final item in raw) {
      if (item is! Map) continue;
      final id = (item['id'] as num?)?.toInt();
      final name = item['name'] as String?;
      if (id == null || name == null) continue;
      out.add(FilterOption(id: id, name: name, code: item['code'] as String?));
    }
    return out;
  }

  static List<EntityOption> _entities(dynamic raw) {
    if (raw is! List) return const [];
    final out = <EntityOption>[];
    for (final item in raw) {
      if (item is! Map) continue;
      final id = item['id'] as String?;
      final name = item['name'] as String?;
      if (id == null || name == null) continue;
      out.add(EntityOption(id: id, name: name));
    }
    return out;
  }
}
