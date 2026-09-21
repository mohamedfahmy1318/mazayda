import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/appeal.dart';

part 'appeal_model.freezed.dart';
part 'appeal_model.g.dart';

/// مرجع المزاد المتداخل داخل الاعتراض — `auction: {id, title}`.
@freezed
abstract class AppealAuctionRefModel with _$AppealAuctionRefModel {
  const AppealAuctionRefModel._();

  const factory AppealAuctionRefModel({String? id, String? title}) =
      _AppealAuctionRefModel;

  factory AppealAuctionRefModel.fromJson(Map<String, dynamic> json) =>
      _$AppealAuctionRefModelFromJson(json);

  AppealAuctionRef toEntity() =>
      AppealAuctionRef(id: id ?? '', title: title ?? '');
}

/// يطابق AppealResource:
/// {id, subject, reason, status, status_label, admin_response, entity_response,
///  auction:{id,title}?, created_at, forwarded_at, entity_decided_at, resolved_at}
@freezed
abstract class AppealModel with _$AppealModel {
  const AppealModel._();

  const factory AppealModel({
    required String id,
    String? subject,
    String? reason,
    String? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    @JsonKey(name: 'admin_response') String? adminResponse,
    @JsonKey(name: 'entity_response') String? entityResponse,
    AppealAuctionRefModel? auction,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'forwarded_at') String? forwardedAt,
    @JsonKey(name: 'entity_decided_at') String? entityDecidedAt,
    @JsonKey(name: 'resolved_at') String? resolvedAt,
  }) = _AppealModel;

  factory AppealModel.fromJson(Map<String, dynamic> json) =>
      _$AppealModelFromJson(json);

  Appeal toEntity() => Appeal(
    id: id,
    subject: subject ?? '',
    reason: reason ?? '',
    auction: auction?.toEntity(),
    status: AppealStatusX.fromApi(status),
    statusLabel: statusLabel,
    adminResponse: adminResponse,
    entityResponse: entityResponse,
    createdAt: DateTime.tryParse(createdAt ?? '') ?? DateTime.now(),
    forwardedAt: DateTime.tryParse(forwardedAt ?? ''),
    entityDecidedAt: DateTime.tryParse(entityDecidedAt ?? ''),
    resolvedAt: DateTime.tryParse(resolvedAt ?? ''),
  );
}
