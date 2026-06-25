import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/kyc_entities.dart';

part 'kyc_models.freezed.dart';
part 'kyc_models.g.dart';

/// حالة الـ KYC من GET /kyc.
@freezed
class KycStatusModel with _$KycStatusModel {
  const KycStatusModel._();

  const factory KycStatusModel({
    String? status,
    @JsonKey(name: 'documents_on_file')
    @Default(<String>[])
    List<String> documentsOnFile,
    @JsonKey(name: 'can_submit') @Default(false) bool canSubmit,
  }) = _KycStatusModel;

  factory KycStatusModel.fromJson(Map<String, dynamic> json) =>
      _$KycStatusModelFromJson(json);

  KycStatus toEntity() => KycStatus(
    status: KycAccountStatusX.fromApi(status),
    documentsOnFile: documentsOnFile,
    canSubmit: canSubmit,
  );
}

/// ولاية — GET /wilayas (بترجع name_ar / name_fr).
@freezed
class WilayaModel with _$WilayaModel {
  const WilayaModel._();

  const factory WilayaModel({
    required int id,
    @Default('') String code,
    @JsonKey(name: 'name_ar') String? nameAr,
    @JsonKey(name: 'name_fr') String? nameFr,
  }) = _WilayaModel;

  factory WilayaModel.fromJson(Map<String, dynamic> json) =>
      _$WilayaModelFromJson(json);

  Wilaya toEntity() => Wilaya(id: id, code: code, name: nameAr ?? nameFr ?? '');
}

/// بلدية — GET /wilayas/:id/communes.
@freezed
class CommuneModel with _$CommuneModel {
  const CommuneModel._();

  const factory CommuneModel({
    required int id,
    @JsonKey(name: 'name_ar') String? nameAr,
    @JsonKey(name: 'name_fr') String? nameFr,
    @JsonKey(name: 'postal_code') String? postalCode,
  }) = _CommuneModel;

  factory CommuneModel.fromJson(Map<String, dynamic> json) =>
      _$CommuneModelFromJson(json);

  Commune toEntity() =>
      Commune(id: id, name: nameAr ?? nameFr ?? '', postalCode: postalCode);
}
