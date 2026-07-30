import 'package:equatable/equatable.dart';

/// نتيجة مصفّحة على مستوى الـ domain — مستقلة تمامًا عن طبقة الشبكة.
///
/// الـ data layer بيملاها من `meta.pagination` اللي بيرجّعه الباك:
/// `{current_page, last_page, per_page, total, count}`.
///
/// [hasMore] هنا هو **المصدر الوحيد الموثوق** لوجود صفحة تالية. الطريقة
/// القديمة (`items.length == perPage`) بتخترع صفحة فاضية كل ما يكون العدد
/// الكلي من مضاعفات حجم الصفحة.
class Paged<T> extends Equatable {
  final List<T> items;
  final int currentPage;
  final int lastPage;
  final int total;

  const Paged({
    required this.items,
    this.currentPage = 1,
    this.lastPage = 1,
    this.total = 0,
  });

  const Paged.single(this.items)
    : currentPage = 1,
      lastPage = 1,
      total = 0;

  bool get hasMore => currentPage < lastPage;

  @override
  List<Object?> get props => [items, currentPage, lastPage, total];
}
