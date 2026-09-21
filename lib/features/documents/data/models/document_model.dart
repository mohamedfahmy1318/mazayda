import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/document.dart';

part 'document_model.freezed.dart';
part 'document_model.g.dart';

/// سياق المزاد المرفق — `whenLoaded('auction')`، فالمفتاح ممكن يغيب تمامًا.
@freezed
abstract class DocumentAuctionRefModel with _$DocumentAuctionRefModel {
  const DocumentAuctionRefModel._();

  const factory DocumentAuctionRefModel({
    String? id,
    String? title,
    @JsonKey(name: 'entity_name') String? entityName,
    @JsonKey(name: 'wilaya_name') String? wilayaName,
    @JsonKey(name: 'category_name') String? categoryName,
  }) = _DocumentAuctionRefModel;

  factory DocumentAuctionRefModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentAuctionRefModelFromJson(json);

  DocumentAuctionRef toEntity() => DocumentAuctionRef(
    id: id ?? '',
    title: title ?? '',
    entityName: entityName,
    wilayaName: wilayaName,
    categoryName: categoryName,
  );
}

/// يطابق `DocumentResource` (10 مفاتيح).
@freezed
abstract class DocumentModel with _$DocumentModel {
  const DocumentModel._();

  const factory DocumentModel({
    required String id,
    String? type,
    @JsonKey(name: 'type_label') String? typeLabel,
    String? title,
    @JsonKey(name: 'is_public') @Default(false) bool isPublic,
    @JsonKey(name: 'file_size') @Default(0) int fileSize,
    @JsonKey(name: 'file_size_human') String? fileSizeHuman,
    @JsonKey(name: 'issued_at') String? issuedAt,
    @JsonKey(name: 'download_url') String? downloadUrl,
    @JsonKey(name: 'verify_url') String? verifyUrl,
    DocumentAuctionRefModel? auction,
  }) = _DocumentModel;

  factory DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentModelFromJson(json);

  UserDocument toEntity() => UserDocument(
    id: id,
    type: DocumentTypeX.fromApi(type),
    typeLabel: typeLabel ?? '',
    title: title ?? '',
    isPublic: isPublic,
    fileSize: fileSize,
    fileSizeHuman: fileSizeHuman ?? '',
    issuedAt: DateTime.tryParse(issuedAt ?? ''),
    downloadUrl: downloadUrl ?? '',
    verifyUrl: verifyUrl,
    auction: auction?.toEntity(),
  );
}

/// يطابق `GET /documents/summary` — DocumentLibraryService::stats.
@freezed
abstract class DocumentsSummaryModel with _$DocumentsSummaryModel {
  const DocumentsSummaryModel._();

  const factory DocumentsSummaryModel({
    @Default(0) int total,
    @Default(0) int books,
    @Default(0) int awards,
    @Default(0) int receipts,
    @JsonKey(name: 'total_bytes') @Default(0) int totalBytes,
  }) = _DocumentsSummaryModel;

  factory DocumentsSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentsSummaryModelFromJson(json);

  DocumentsSummary toEntity() => DocumentsSummary(
    total: total,
    books: books,
    awards: awards,
    receipts: receipts,
    totalBytes: totalBytes,
  );
}
