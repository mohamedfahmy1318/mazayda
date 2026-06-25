import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/appeal.dart';

part 'appeal_model.freezed.dart';
part 'appeal_model.g.dart';

@freezed
class AppealModel with _$AppealModel {
  const AppealModel._();

  const factory AppealModel({
    required String id,
    String? subject,
    String? reason,
    @JsonKey(name: 'auction_title') String? auctionTitle,
    String? status,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _AppealModel;

  factory AppealModel.fromJson(Map<String, dynamic> json) =>
      _$AppealModelFromJson(json);

  Appeal toEntity() => Appeal(
    id: id,
    subject: subject ?? '',
    reason: reason ?? '',
    auctionTitle: auctionTitle,
    status: AppealStatusX.fromApi(status),
    createdAt: DateTime.tryParse(createdAt ?? '') ?? DateTime.now(),
  );
}
