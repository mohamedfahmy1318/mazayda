// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentAuctionRefModelImpl _$$DocumentAuctionRefModelImplFromJson(
  Map<String, dynamic> json,
) => _$DocumentAuctionRefModelImpl(
  id: json['id'] as String?,
  title: json['title'] as String?,
  entityName: json['entity_name'] as String?,
  wilayaName: json['wilaya_name'] as String?,
  categoryName: json['category_name'] as String?,
);

Map<String, dynamic> _$$DocumentAuctionRefModelImplToJson(
  _$DocumentAuctionRefModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'entity_name': instance.entityName,
  'wilaya_name': instance.wilayaName,
  'category_name': instance.categoryName,
};

_$DocumentModelImpl _$$DocumentModelImplFromJson(Map<String, dynamic> json) =>
    _$DocumentModelImpl(
      id: json['id'] as String,
      type: json['type'] as String?,
      typeLabel: json['type_label'] as String?,
      title: json['title'] as String?,
      isPublic: json['is_public'] as bool? ?? false,
      fileSize: (json['file_size'] as num?)?.toInt() ?? 0,
      fileSizeHuman: json['file_size_human'] as String?,
      issuedAt: json['issued_at'] as String?,
      downloadUrl: json['download_url'] as String?,
      verifyUrl: json['verify_url'] as String?,
      auction: json['auction'] == null
          ? null
          : DocumentAuctionRefModel.fromJson(
              json['auction'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$DocumentModelImplToJson(_$DocumentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'type_label': instance.typeLabel,
      'title': instance.title,
      'is_public': instance.isPublic,
      'file_size': instance.fileSize,
      'file_size_human': instance.fileSizeHuman,
      'issued_at': instance.issuedAt,
      'download_url': instance.downloadUrl,
      'verify_url': instance.verifyUrl,
      'auction': instance.auction,
    };

_$DocumentsSummaryModelImpl _$$DocumentsSummaryModelImplFromJson(
  Map<String, dynamic> json,
) => _$DocumentsSummaryModelImpl(
  total: (json['total'] as num?)?.toInt() ?? 0,
  books: (json['books'] as num?)?.toInt() ?? 0,
  awards: (json['awards'] as num?)?.toInt() ?? 0,
  receipts: (json['receipts'] as num?)?.toInt() ?? 0,
  totalBytes: (json['total_bytes'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$DocumentsSummaryModelImplToJson(
  _$DocumentsSummaryModelImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'books': instance.books,
  'awards': instance.awards,
  'receipts': instance.receipts,
  'total_bytes': instance.totalBytes,
};
