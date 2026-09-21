import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/auction_viewer.dart';

part 'auction_viewer_model.freezed.dart';
part 'auction_viewer_model.g.dart';

/// يطابق `meta.viewer.existing_appeal`.
@freezed
abstract class ViewerAppealRefModel with _$ViewerAppealRefModel {
  const ViewerAppealRefModel._();

  const factory ViewerAppealRefModel({
    String? id,
    String? status,
    @JsonKey(name: 'status_label') String? statusLabel,
  }) = _ViewerAppealRefModel;

  factory ViewerAppealRefModel.fromJson(Map<String, dynamic> json) =>
      _$ViewerAppealRefModelFromJson(json);

  ViewerAppealRef toEntity() => ViewerAppealRef(
    id: id ?? '',
    status: status ?? '',
    statusLabel: statusLabel,
  );
}

/// يطابق `meta.viewer` من `GET /auctions/{id}` — 11 علم.
/// كل الأعلام لها قيمة افتراضية `false` عشان أي حقل جديد/غايب ما يكسرش الـ parsing.
@freezed
abstract class AuctionViewerModel with _$AuctionViewerModel {
  const AuctionViewerModel._();

  const factory AuctionViewerModel({
    @JsonKey(name: 'can_bid') @Default(false) bool canBid,
    @JsonKey(name: 'is_participant') @Default(false) bool isParticipant,
    @JsonKey(name: 'has_commerce_register')
    @Default(false)
    bool hasCommerceRegister,
    @JsonKey(name: 'commerce_register_blocked')
    @Default(false)
    bool commerceRegisterBlocked,
    @JsonKey(name: 'has_book_access') @Default(false) bool hasBookAccess,
    @JsonKey(name: 'book_purchased') @Default(false) bool bookPurchased,
    @JsonKey(name: 'deposit_paid') @Default(false) bool depositPaid,
    @JsonKey(name: 'is_winner') @Default(false) bool isWinner,
    @JsonKey(name: 'can_appeal') @Default(false) bool canAppeal,
    @JsonKey(name: 'existing_appeal') ViewerAppealRefModel? existingAppeal,
    @JsonKey(name: 'has_final_payment') @Default(false) bool hasFinalPayment,
    // دور الحساب — بقى جزء من `meta.viewer` بدل ما يتجاب من `/profile`.
    @JsonKey(name: 'is_staff') @Default(false) bool isStaff,
    String? role,
    @JsonKey(name: 'is_premium') @Default(false) bool isPremium,
  }) = _AuctionViewerModel;

  factory AuctionViewerModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionViewerModelFromJson(json);

  AuctionViewer toEntity() => AuctionViewer(
    canBid: canBid,
    isParticipant: isParticipant,
    hasCommerceRegister: hasCommerceRegister,
    commerceRegisterBlocked: commerceRegisterBlocked,
    hasBookAccess: hasBookAccess,
    bookPurchased: bookPurchased,
    depositPaid: depositPaid,
    isWinner: isWinner,
    canAppeal: canAppeal,
    existingAppeal: existingAppeal?.toEntity(),
    hasFinalPayment: hasFinalPayment,
    isStaff: isStaff,
    role: role,
    isPremium: isPremium,
  );
}
