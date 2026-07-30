// تمثيل الغلاف الموحّد للـ API: {data, message, meta}.
//
// الـ ApiClient.get/post بيرجّعوا جزء data بس، وده بيرمي الـ meta كله —
// واللي فيه معلومات ماينفعش نستغنى عنها:
//   • meta.viewer       → أعلام التحكّم في أزرار صفحة المزاد (11 علم)
//   • meta.pagination   → معلومات الصفحات الحقيقية
//   • meta.counts       → أعداد تبويبات «مزاداتي»
//   • meta.unread_count → عدّاد الإشعارات غير المقروءة
// لما تحتاج أي حاجة من دول، استخدم getEnvelope / postEnvelope.

/// معلومات الصفحة من `meta.pagination`.
class PageInfo {
  final int currentPage;
  final int lastPage;
  final int perPage;
  final int total;
  final int count;

  const PageInfo({
    required this.currentPage,
    required this.lastPage,
    required this.perPage,
    required this.total,
    required this.count,
  });

  /// ردّ غير مصفّح (أو meta فاضية) — صفحة واحدة.
  static const single = PageInfo(
    currentPage: 1,
    lastPage: 1,
    perPage: 0,
    total: 0,
    count: 0,
  );

  factory PageInfo.fromMeta(Map<String, dynamic>? meta) {
    final p = meta?['pagination'];
    if (p is! Map) return single;
    int read(String key, [int fallback = 0]) =>
        (p[key] as num?)?.toInt() ?? fallback;
    return PageInfo(
      currentPage: read('current_page', 1),
      lastPage: read('last_page', 1),
      perPage: read('per_page'),
      total: read('total'),
      count: read('count'),
    );
  }

  /// المصدر الوحيد الموثوق لوجود صفحة تالية.
  /// (المقارنة القديمة `items.length == perPage` بتخترع صفحة وهمية
  ///  كل ما يكون العدد الكلي من مضاعفات حجم الصفحة.)
  bool get hasMore => currentPage < lastPage;
}

/// ردّ الـ API كامل بالغلاف.
class ApiResponse<T> {
  final T data;
  final String? message;
  final Map<String, dynamic> meta;

  const ApiResponse({
    required this.data,
    this.message,
    this.meta = const <String, dynamic>{},
  });

  PageInfo get page => PageInfo.fromMeta(meta);

  /// قراءة قسم من الـ meta كخريطة — مثال: `metaMap('viewer')`.
  Map<String, dynamic>? metaMap(String key) {
    final value = meta[key];
    return value is Map ? Map<String, dynamic>.from(value) : null;
  }

  int metaInt(String key, [int fallback = 0]) =>
      (meta[key] as num?)?.toInt() ?? fallback;

  /// `data` كقائمة — بيرجّع قائمة فاضية لو مش List (بدل ما يرمي).
  List<dynamic> get dataList => data is List ? data as List<dynamic> : const [];

  /// `data` كخريطة — أو null لو مش Map.
  Map<String, dynamic>? get dataMap =>
      data is Map ? Map<String, dynamic>.from(data as Map) : null;
}

/// قائمة مصفّحة جاهزة للاستهلاك في الـ cubits.
class Paginated<T> {
  final List<T> items;
  final PageInfo page;

  const Paginated({required this.items, required this.page});

  bool get hasMore => page.hasMore;
  int get total => page.total;

  /// يبني قائمة مصفّحة من ردّ مغلّف + دالة تحويل لكل عنصر.
  factory Paginated.from(
    ApiResponse<dynamic> response,
    T Function(Map<String, dynamic> json) fromJson,
  ) {
    return Paginated<T>(
      items: response.dataList
          .whereType<Map>()
          .map((e) => fromJson(Map<String, dynamic>.from(e)))
          .toList(),
      page: response.page,
    );
  }
}
