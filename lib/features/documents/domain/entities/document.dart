import 'package:equatable/equatable.dart';

/// نوع الوثيقة — app/Enums/DocumentType.php.
///
/// ⚠️ `auctionReport` **مستبعد من الفلاتر** في الباك (`cleanTypes` بتشيله)
/// ومش بيظهر في نتائج المكتبة، لكن بنسيبه في الـ enum عشان الـ parsing
/// ما يكسرش لو رجع في أي سياق تاني.
enum DocumentType {
  conditionBook,
  award,
  paymentReceipt,
  deliveryReport,
  auctionReport,
  unknown,
}

extension DocumentTypeX on DocumentType {
  static DocumentType fromApi(String? v) => switch (v) {
    'CONDITION_BOOK' => DocumentType.conditionBook,
    'AWARD' => DocumentType.award,
    'PAYMENT_RECEIPT' => DocumentType.paymentReceipt,
    'DELIVERY_REPORT' => DocumentType.deliveryReport,
    'AUCTION_REPORT' => DocumentType.auctionReport,
    _ => DocumentType.unknown,
  };

  String? get apiValue => switch (this) {
    DocumentType.conditionBook => 'CONDITION_BOOK',
    DocumentType.award => 'AWARD',
    DocumentType.paymentReceipt => 'PAYMENT_RECEIPT',
    DocumentType.deliveryReport => 'DELIVERY_REPORT',
    DocumentType.auctionReport => 'AUCTION_REPORT',
    DocumentType.unknown => null,
  };

  /// الأنواع اللي بيقبلها فلتر الباك فعليًا.
  static const filterable = [
    DocumentType.conditionBook,
    DocumentType.award,
    DocumentType.paymentReceipt,
    DocumentType.deliveryReport,
  ];
}

/// سياق المزاد المرفق بالوثيقة — بيرجع فقط لما العلاقة محمّلة.
class DocumentAuctionRef extends Equatable {
  final String id;
  final String title;
  final String? entityName;
  final String? wilayaName;
  final String? categoryName;

  const DocumentAuctionRef({
    required this.id,
    required this.title,
    this.entityName,
    this.wilayaName,
    this.categoryName,
  });

  @override
  List<Object?> get props => [id, title];
}

/// وثيقة في مكتبة المستخدم — يطابق `DocumentResource`.
class UserDocument extends Equatable {
  final String id;
  final DocumentType type;

  /// نص النوع **مترجَم من السيرفر** — نعرضه بدل جدول ترجمة محلي.
  final String typeLabel;

  final String title;
  final bool isPublic;
  final int fileSize;
  final String fileSizeHuman;
  final DateTime? issuedAt;

  /// مسار تحميل الـ API (بتوكن Sanctum) — مش رابط ويب بجلسة.
  final String downloadUrl;

  /// صفحة تحقق عامة (HTML) — null لو الوثيقة غير موقّعة.
  final String? verifyUrl;

  final DocumentAuctionRef? auction;

  const UserDocument({
    required this.id,
    required this.type,
    required this.typeLabel,
    required this.title,
    this.isPublic = false,
    this.fileSize = 0,
    this.fileSizeHuman = '',
    this.issuedAt,
    required this.downloadUrl,
    this.verifyUrl,
    this.auction,
  });

  bool get isVerifiable => (verifyUrl ?? '').isNotEmpty;

  @override
  List<Object?> get props => [id, type, issuedAt];
}

/// إحصاءات المكتبة — `GET /documents/summary`.
/// ملاحظة: `receipts` بتجمع إيصالات الدفع **ومحاضر التسليم** في بطاقة واحدة
/// (نفس تجميع الباك).
class DocumentsSummary extends Equatable {
  final int total;
  final int books;
  final int awards;
  final int receipts;
  final int totalBytes;

  const DocumentsSummary({
    this.total = 0,
    this.books = 0,
    this.awards = 0,
    this.receipts = 0,
    this.totalBytes = 0,
  });

  @override
  List<Object?> get props => [total, books, awards, receipts, totalBytes];
}
