import 'package:equatable/equatable.dart';

/// حالة الاعتراض كما يراها المواطن.
/// الباك بيجمّع الحالات الداخلية (FORWARDED_TO_ENTITY / ENTITY_APPROVED /
/// ENTITY_REJECTED) تحت PENDING عبر publicStatus()، فالقيم الوحيدة اللي
/// بتوصل للعميل هي: PENDING | APPROVED | REJECTED.
enum AppealStatus { pending, approved, rejected, unknown }

extension AppealStatusX on AppealStatus {
  static AppealStatus fromApi(String? v) => switch (v) {
    'PENDING' => AppealStatus.pending,
    'APPROVED' => AppealStatus.approved,
    'REJECTED' => AppealStatus.rejected,
    _ => AppealStatus.unknown,
  };
}

/// مرجع مبسّط للمزاد المرتبط بالاعتراض.
/// ملاحظة: المفتاح `auction` بيتشال من الـ JSON أصلًا لو العلاقة مش محمّلة
/// (whenLoaded) — يعني غياب المفتاح مش معناه null.
class AppealAuctionRef extends Equatable {
  final String id;
  final String title;

  const AppealAuctionRef({required this.id, required this.title});

  @override
  List<Object?> get props => [id, title];
}

/// اعتراض المواطن على نتيجة مزاد.
class Appeal extends Equatable {
  final String id;
  final String subject;
  final String reason;
  final AppealAuctionRef? auction;
  final AppealStatus status;

  /// نص الحالة مترجَم من السيرفر (status_label) — نعرضه بدل جدول ترجمة محلي.
  final String? statusLabel;

  /// ردّ الإدارة/الجهة — بيرجعوا null لحد ما يبقى الاعتراض نهائيًا.
  final String? adminResponse;
  final String? entityResponse;

  final DateTime createdAt;
  final DateTime? forwardedAt;
  final DateTime? entityDecidedAt;
  final DateTime? resolvedAt;

  const Appeal({
    required this.id,
    required this.subject,
    required this.reason,
    this.auction,
    required this.status,
    this.statusLabel,
    this.adminResponse,
    this.entityResponse,
    required this.createdAt,
    this.forwardedAt,
    this.entityDecidedAt,
    this.resolvedAt,
  });

  /// الاعتراض وصل لحالة نهائية (اتقبل أو اترفض).
  bool get isTerminal =>
      status == AppealStatus.approved || status == AppealStatus.rejected;

  @override
  List<Object?> get props => [id, subject, reason, auction, status, createdAt];
}
