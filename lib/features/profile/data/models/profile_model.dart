import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/profile.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const ProfileModel._();

  const factory ProfileModel({
    required String id,
    @JsonKey(name: 'nin_masked') String? ninMasked,
    @JsonKey(name: 'first_name_ar') String? firstNameAr,
    @JsonKey(name: 'last_name_ar') String? lastNameAr,
    String? email,
    String? phone,
    String? address,
    @JsonKey(name: 'postal_code') String? postalCode,
    String? profession,
    @JsonKey(name: 'wilaya_name') String? wilayaName,
    @JsonKey(name: 'kyc_status') @Default('PENDING') String kycStatus,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  Profile toEntity() => Profile(
        id: id,
        ninMasked: ninMasked,
        fullName: [firstNameAr, lastNameAr].where((e) => e != null).join(' '),
        email: email,
        phone: phone,
        address: address,
        postalCode: postalCode,
        profession: profession,
        wilayaName: wilayaName,
        kycStatus: kycStatus,
      );
}
