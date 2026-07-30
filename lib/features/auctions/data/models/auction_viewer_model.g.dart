// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_viewer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViewerAppealRefModelImpl _$$ViewerAppealRefModelImplFromJson(
  Map<String, dynamic> json,
) => _$ViewerAppealRefModelImpl(
  id: json['id'] as String?,
  status: json['status'] as String?,
  statusLabel: json['status_label'] as String?,
);

Map<String, dynamic> _$$ViewerAppealRefModelImplToJson(
  _$ViewerAppealRefModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'status_label': instance.statusLabel,
};

_$AuctionViewerModelImpl _$$AuctionViewerModelImplFromJson(
  Map<String, dynamic> json,
) => _$AuctionViewerModelImpl(
  canBid: json['can_bid'] as bool? ?? false,
  isParticipant: json['is_participant'] as bool? ?? false,
  hasCommerceRegister: json['has_commerce_register'] as bool? ?? false,
  commerceRegisterBlocked: json['commerce_register_blocked'] as bool? ?? false,
  hasBookAccess: json['has_book_access'] as bool? ?? false,
  bookPurchased: json['book_purchased'] as bool? ?? false,
  depositPaid: json['deposit_paid'] as bool? ?? false,
  isWinner: json['is_winner'] as bool? ?? false,
  canAppeal: json['can_appeal'] as bool? ?? false,
  existingAppeal: json['existing_appeal'] == null
      ? null
      : ViewerAppealRefModel.fromJson(
          json['existing_appeal'] as Map<String, dynamic>,
        ),
  hasFinalPayment: json['has_final_payment'] as bool? ?? false,
);

Map<String, dynamic> _$$AuctionViewerModelImplToJson(
  _$AuctionViewerModelImpl instance,
) => <String, dynamic>{
  'can_bid': instance.canBid,
  'is_participant': instance.isParticipant,
  'has_commerce_register': instance.hasCommerceRegister,
  'commerce_register_blocked': instance.commerceRegisterBlocked,
  'has_book_access': instance.hasBookAccess,
  'book_purchased': instance.bookPurchased,
  'deposit_paid': instance.depositPaid,
  'is_winner': instance.isWinner,
  'can_appeal': instance.canAppeal,
  'existing_appeal': instance.existingAppeal,
  'has_final_payment': instance.hasFinalPayment,
};
