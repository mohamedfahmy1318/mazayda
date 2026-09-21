import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/notification_preferences.dart';

part 'notification_preferences_model.freezed.dart';
part 'notification_preferences_model.g.dart';

@freezed
abstract class CategoryOptionModel with _$CategoryOptionModel {
  const CategoryOptionModel._();

  const factory CategoryOptionModel({dynamic id, String? name}) =
      _CategoryOptionModel;

  factory CategoryOptionModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryOptionModelFromJson(json);

  AuctionCategoryOption toEntity() =>
      AuctionCategoryOption(id: id?.toString() ?? '', name: name ?? '');
}

@freezed
abstract class NotificationChannelsModel with _$NotificationChannelsModel {
  const NotificationChannelsModel._();

  const factory NotificationChannelsModel({
    @Default(true) bool push,
    @Default(false) bool email,
    @Default(false) bool sms,
  }) = _NotificationChannelsModel;

  factory NotificationChannelsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationChannelsModelFromJson(json);

  NotificationChannels toEntity() =>
      NotificationChannels(push: push, email: email, sms: sms);
}

/// يطابق `NotificationPreferencesResource` — تعديلات 26 · 27 · 28 · 29 · 30.
@freezed
abstract class NotificationPreferencesModel
    with _$NotificationPreferencesModel {
  const NotificationPreferencesModel._();

  const factory NotificationPreferencesModel({
    NotificationChannelsModel? channels,
    @JsonKey(name: 'auction_categories')
    @Default(<dynamic>[])
    List<dynamic> auctionCategories,
    @JsonKey(name: 'new_auction_alerts') @Default(true) bool newAuctionAlerts,
    @JsonKey(name: 'available_categories')
    @Default(<CategoryOptionModel>[])
    List<CategoryOptionModel> availableCategories,
    @JsonKey(name: 'email_requires_premium')
    @Default(false)
    bool emailRequiresPremium,
    @JsonKey(name: 'is_premium') @Default(false) bool isPremium,
  }) = _NotificationPreferencesModel;

  factory NotificationPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferencesModelFromJson(json);

  NotificationPreferences toEntity() => NotificationPreferences(
    channels: (channels ?? const NotificationChannelsModel()).toEntity(),
    // معرّفات الفئات أرقام في الباك — بنخزّنها نصوص زي باقي المراجع.
    categoryIds: auctionCategories.map((e) => e.toString()).toList(),
    newAuctionAlerts: newAuctionAlerts,
    availableCategories: availableCategories
        .map((c) => c.toEntity())
        .toList(),
    emailRequiresPremium: emailRequiresPremium,
    isPremium: isPremium,
  );
}
