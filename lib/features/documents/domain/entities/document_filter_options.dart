import 'package:equatable/equatable.dart';

/// خيار فلتر بمعرّف رقمي (فئة أو ولاية).
class FilterOption extends Equatable {
  final int id;
  final String name;

  /// كود الولاية (`"40"`) — للولايات بس، `null` للفئات.
  final String? code;

  const FilterOption({required this.id, required this.name, this.code});

  @override
  List<Object?> get props => [id, name];
}

/// خيار فلتر بمعرّف نصي (جهة — UUID).
class EntityOption extends Equatable {
  final String id;
  final String name;

  const EntityOption({required this.id, required this.name});

  @override
  List<Object?> get props => [id, name];
}

/// خيارات فلاتر الوثائق — `GET /documents/filters` (BE-4).
///
/// **مقيّدة بوثائق المستخدم الحالي**: مستخدم عنده وثيقة واحدة من ولاية
/// واحدة بيشوف الولاية دي بس. ده الفرق بينها وبين `/auctions/filters`
/// العام (اللي كمان مافيهوش `entities`).
///
/// مستخدم من غير وثائق = كل المصفوفات فاضية → ما نعرضش شرائح فلتر أصلًا.
class DocumentFilterOptions extends Equatable {
  final List<FilterOption> categories;
  final List<FilterOption> wilayas;
  final List<EntityOption> entities;

  const DocumentFilterOptions({
    this.categories = const [],
    this.wilayas = const [],
    this.entities = const [],
  });

  static const empty = DocumentFilterOptions();

  /// فيه أي خيار نعرضه؟
  bool get isEmpty =>
      categories.isEmpty && wilayas.isEmpty && entities.isEmpty;

  @override
  List<Object?> get props => [categories, wilayas, entities];
}
