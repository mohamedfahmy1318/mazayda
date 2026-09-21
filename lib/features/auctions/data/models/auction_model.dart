import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/auction.dart';
import '../../domain/entities/auction_session.dart';
import 'money_model.dart';

part 'auction_model.freezed.dart';
part 'auction_model.g.dart';

/// تحويل متسامح لرقم عشري — أعمدة decimal في Laravel ساعات بترجع كنص.
double? _toDouble(dynamic v) {
  if (v is num) return v.toDouble();
  if (v is String) return double.tryParse(v);
  return null;
}

/// مرجع مسمّى (الفئة id رقم، الجهة id نص UUID — لذلك نخزّن id كنص).
@freezed
abstract class NamedRefModel with _$NamedRefModel {
  const NamedRefModel._();

  const factory NamedRefModel({dynamic id, String? name}) = _NamedRefModel;

  factory NamedRefModel.fromJson(Map<String, dynamic> json) =>
      _$NamedRefModelFromJson(json);

  NamedRef toEntity() => NamedRef(id: id?.toString() ?? '', name: name ?? '');
}

/// مواصفة أصل — الباك بيرجّع العنوان/النص باللغة الحالية + النسخ اللغوية.
@freezed
abstract class AuctionSpecModel with _$AuctionSpecModel {
  const AuctionSpecModel._();

  const factory AuctionSpecModel({String? title, String? body}) =
      _AuctionSpecModel;

  factory AuctionSpecModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionSpecModelFromJson(json);

  AuctionSpec toEntity() =>
      AuctionSpec(title: title ?? '', body: body ?? '');
}

/// `inspection` — بيرجع دايمًا (مش whenLoaded) بس القيم جوّاه ممكن تكون null.
@freezed
abstract class InspectionModel with _$InspectionModel {
  const InspectionModel._();

  const factory InspectionModel({
    String? start,
    String? end,
    String? location,
    @JsonKey(name: 'is_open') @Default(false) bool isOpen,
  }) = _InspectionModel;

  factory InspectionModel.fromJson(Map<String, dynamic> json) =>
      _$InspectionModelFromJson(json);

  InspectionWindow toEntity() => InspectionWindow(
    start: DateTime.tryParse(start ?? ''),
    end: DateTime.tryParse(end ?? ''),
    location: location,
    isOpen: isOpen,
  );
}

/// `appeal_window` — نافذة الطعن بعد الإغلاق.
@freezed
abstract class AppealWindowModel with _$AppealWindowModel {
  const AppealWindowModel._();

  const factory AppealWindowModel({
    @Default(0) int days,
    @JsonKey(name: 'is_open') @Default(false) bool isOpen,
    String? deadline,
  }) = _AppealWindowModel;

  factory AppealWindowModel.fromJson(Map<String, dynamic> json) =>
      _$AppealWindowModelFromJson(json);

  AppealWindow toEntity() => AppealWindow(
    days: days,
    isOpen: isOpen,
    deadline: DateTime.tryParse(deadline ?? ''),
  );
}

/// `lease` — المفتاح **بيختفي تمامًا** من الـ JSON لو المزاد مش LEASE.
@freezed
abstract class LeaseModel with _$LeaseModel {
  const LeaseModel._();

  const factory LeaseModel({
    @JsonKey(name: 'duration_years') int? durationYears,
    int? renewals,
  }) = _LeaseModel;

  factory LeaseModel.fromJson(Map<String, dynamic> json) =>
      _$LeaseModelFromJson(json);

  LeaseTerms toEntity() =>
      LeaseTerms(durationYears: durationYears, renewals: renewals);
}

/// صف واحد في سجل الجلسات — `session.history[]` و`session` نفسها.
@freezed
abstract class AuctionSessionModel with _$AuctionSessionModel {
  const AuctionSessionModel._();

  const factory AuctionSessionModel({
    @Default(1) int round,
    String? code,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'reduction_percent') dynamic reductionPercent,
    String? status,
    @JsonKey(name: 'result_label') String? resultLabel,
  }) = _AuctionSessionModel;

  factory AuctionSessionModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionSessionModelFromJson(json);

  AuctionSession toEntity() => AuctionSession(
    round: round,
    code: code,
    startTime: DateTime.tryParse(startTime ?? ''),
    endTime: DateTime.tryParse(endTime ?? ''),
    openingPrice: openingPrice?.toEntity(),
    reductionPercent: _toDouble(reductionPercent),
    status: status,
    resultLabel: resultLabel,
  );
}

/// `session` — ترقيم الجلسة الحالية + سجل الإعادات (تعديلات 5 · 7 · 8 · 10).
/// المفتاح كله بيغيب لو الباك لسه مانزّلش الميزة، فكل حاجة اختيارية.
@freezed
abstract class AuctionSessionInfoModel with _$AuctionSessionInfoModel {
  const AuctionSessionInfoModel._();

  const factory AuctionSessionInfoModel({
    @Default(1) int round,
    String? code,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'reduction_percent') dynamic reductionPercent,
    @JsonKey(name: 'reschedule_count') @Default(0) int rescheduleCount,
    @JsonKey(name: 'original_opening_price') MoneyModel? originalOpeningPrice,
    @Default(<AuctionSessionModel>[]) List<AuctionSessionModel> history,
  }) = _AuctionSessionInfoModel;

  factory AuctionSessionInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionSessionInfoModelFromJson(json);

  AuctionSessionInfo toEntity() => AuctionSessionInfo(
    current: AuctionSession(
      round: round,
      code: code,
      startTime: DateTime.tryParse(startTime ?? ''),
      endTime: DateTime.tryParse(endTime ?? ''),
      openingPrice: openingPrice?.toEntity(),
      reductionPercent: _toDouble(reductionPercent),
    ),
    rescheduleCount: rescheduleCount,
    originalOpeningPrice: originalOpeningPrice?.toEntity(),
    history: history.map((h) => h.toEntity()).toList(),
  );
}

/// `sector` — القطاع ونسبته (تعديلات 11 · 12).
@freezed
abstract class AuctionSectorModel with _$AuctionSectorModel {
  const AuctionSectorModel._();

  const factory AuctionSectorModel({
    dynamic id,
    String? name,
    @JsonKey(name: 'min_increment_percent') dynamic minIncrementPercent,
  }) = _AuctionSectorModel;

  factory AuctionSectorModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionSectorModelFromJson(json);

  AuctionSector toEntity() => AuctionSector(
    id: id?.toString() ?? '',
    name: name ?? '',
    minIncrementPercent: _toDouble(minIncrementPercent),
  );
}

/// موديل تفاصيل المزاد — يطابق `AuctionResource`.
/// للقوائم استخدم `AuctionListModel` (شكل مختلف وأصغر).
@freezed
abstract class AuctionModel with _$AuctionModel {
  const AuctionModel._();

  const factory AuctionModel({
    required String id,
    String? title,
    String? description,
    String? status,
    @JsonKey(name: 'auction_type') String? auctionType,
    @JsonKey(name: 'asset_class') String? assetClass,
    String? condition,
    @JsonKey(name: 'unit_count') int? unitCount,
    @JsonKey(name: 'condition_terms') String? conditionTerms,
    @JsonKey(name: 'award_terms') String? awardTerms,
    @Default(<AuctionSpecModel>[]) List<AuctionSpecModel> specifications,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    @Default(<String>[]) List<String> photos,
    @JsonKey(name: 'video_url') String? videoUrl,
    NamedRefModel? category,
    NamedRefModel? entity,
    WilayaRefModel? wilaya,
    NamedRefModel? commune,
    @JsonKey(name: 'asset_location') String? assetLocation,
    dynamic latitude,
    dynamic longitude,
    @JsonKey(name: 'mayor_name') String? mayorName,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'current_price') MoneyModel? currentPrice,
    @JsonKey(name: 'deposit_amount') MoneyModel? depositAmount,
    @JsonKey(name: 'deposit_percent') dynamic depositPercent,
    @JsonKey(name: 'book_price') MoneyModel? bookPrice,
    @JsonKey(name: 'has_book_access') @Default(false) bool hasBookAccess,
    @JsonKey(name: 'bid_count') @Default(0) int bidCount,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'seconds_remaining') @Default(0) int secondsRemaining,
    @JsonKey(name: 'is_live') @Default(false) bool isLive,
    @JsonKey(name: 'is_biddable') @Default(false) bool isBiddable,
    @JsonKey(name: 'has_ended') @Default(false) bool hasEnded,
    @JsonKey(name: 'extension_count') @Default(0) int extensionCount,
    @JsonKey(name: 'max_extensions') int? maxExtensions,
    InspectionModel? inspection,
    @JsonKey(name: 'appeal_window') AppealWindowModel? appealWindow,
    LeaseModel? lease,
    @JsonKey(name: 'winner_alias') String? winnerAlias,
    @JsonKey(name: 'final_price') MoneyModel? finalPrice,
    @JsonKey(name: 'requires_commerce_register')
    @Default(false)
    bool requiresCommerceRegister,
    @JsonKey(name: 'requires_newspaper_announcement')
    @Default(false)
    bool requiresNewspaperAnnouncement,
    @JsonKey(name: 'condition_book') ConditionBookModel? conditionBook,
    @JsonKey(name: 'award_document') ConditionBookModel? awardDocument,
    // وصولات المشاركة والنتيجة (تعديلات 21 · 22 · 23) — نفس شكل مرجع
    // الوثيقة، وبيغيبوا لحد ما يستحقوا.
    @JsonKey(name: 'participation_receipt')
    ConditionBookModel? participationReceipt,
    @JsonKey(name: 'result_document') ConditionBookModel? resultDocument,
    AuctionSessionInfoModel? session,
    AuctionSectorModel? sector,
    @JsonKey(name: 'min_bid') MoneyModel? minBid,
    @JsonKey(name: 'publication_priority') String? publicationPriority,
  }) = _AuctionModel;

  factory AuctionModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionModelFromJson(json);

  static const _zero = MoneyModel(amount: 0, formatted: '0 دج');

  Auction toEntity() => Auction(
    id: id,
    title: title ?? '',
    description: description,
    status: AuctionStatusX.fromApi(status),
    auctionType: auctionType ?? 'SALE',
    assetClass: assetClass,
    condition: condition,
    unitCount: unitCount,
    conditionTerms: conditionTerms,
    awardTerms: awardTerms,
    specifications: specifications.map((s) => s.toEntity()).toList(),
    coverPhotoUrl: coverPhotoUrl,
    photos: photos,
    videoUrl: videoUrl,
    category: category?.toEntity(),
    entity: entity?.toEntity(),
    wilayaName: wilaya?.name,
    commune: commune?.toEntity(),
    assetLocation: assetLocation,
    latitude: _toDouble(latitude),
    longitude: _toDouble(longitude),
    mayorName: mayorName,
    openingPrice: (openingPrice ?? _zero).toEntity(),
    currentPrice: (currentPrice ?? _zero).toEntity(),
    depositAmount: (depositAmount ?? _zero).toEntity(),
    depositPercent: _toDouble(depositPercent) ?? 0,
    bookPrice: bookPrice?.toEntity(),
    hasBookAccess: hasBookAccess,
    bidCount: bidCount,
    startTime: DateTime.tryParse(startTime ?? ''),
    endTime: DateTime.tryParse(endTime ?? ''),
    secondsRemaining: secondsRemaining,
    isLive: isLive,
    isBiddable: isBiddable,
    hasEnded: hasEnded,
    extensionCount: extensionCount,
    maxExtensions: maxExtensions,
    inspection: inspection?.toEntity() ?? const InspectionWindow(),
    appealWindow: appealWindow?.toEntity() ?? const AppealWindow(),
    lease: lease?.toEntity(),
    winnerAlias: winnerAlias,
    finalPrice: finalPrice?.toEntity(),
    requiresCommerceRegister: requiresCommerceRegister,
    requiresNewspaperAnnouncement: requiresNewspaperAnnouncement,
    conditionBook: conditionBook?.toEntity(),
    awardDocument: awardDocument?.toEntity(),
    participationReceipt: participationReceipt?.toEntity(),
    resultDocument: resultDocument?.toEntity(),
    conditionBookDownloadUrl: conditionBook?.downloadUrl,
    session: session?.toEntity(),
    sector: sector?.toEntity(),
    minBid: minBid?.toEntity(),
    publicationPriority: PublicationPriorityX.fromApi(publicationPriority),
  );
}

@freezed
abstract class WilayaRefModel with _$WilayaRefModel {
  const factory WilayaRefModel({dynamic id, String? code, String? name}) =
      _WilayaRefModel;

  factory WilayaRefModel.fromJson(Map<String, dynamic> json) =>
      _$WilayaRefModelFromJson(json);
}

/// مرجع وثيقة — نفس الشكل لـ `condition_book` و`award_document`.
/// TODO(B2): استبدله بـ DocumentModel الكامل (10 مفاتيح) لما فيتشر الوثائق يتبني.
@freezed
abstract class ConditionBookModel with _$ConditionBookModel {
  const ConditionBookModel._();

  const factory ConditionBookModel({
    String? id,
    String? title,
    @JsonKey(name: 'download_url') String? downloadUrl,
  }) = _ConditionBookModel;

  factory ConditionBookModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionBookModelFromJson(json);

  AuctionDocumentRef toEntity() =>
      AuctionDocumentRef(id: id, title: title, downloadUrl: downloadUrl);
}
