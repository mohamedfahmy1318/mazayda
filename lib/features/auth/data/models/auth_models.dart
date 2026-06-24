import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/auth_entities.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

/// توكنات — تطابق {access_token, refresh_token}.
@freezed
class AuthTokensModel with _$AuthTokensModel {
  const AuthTokensModel._();

  const factory AuthTokensModel({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _AuthTokensModel;

  factory AuthTokensModel.fromJson(Map<String, dynamic> json) =>
      _$AuthTokensModelFromJson(json);

  AuthTokens toEntity() =>
      AuthTokens(accessToken: accessToken, refreshToken: refreshToken);
}

/// مستخدم — يطابق ردّ /auth/me.
@freezed
class AuthUserModel with _$AuthUserModel {
  const AuthUserModel._();

  const factory AuthUserModel({
    required String id,
    @JsonKey(name: 'first_name_ar') String? firstNameAr,
    @JsonKey(name: 'last_name_ar') String? lastNameAr,
    String? email,
    String? phone,
    @JsonKey(name: 'kyc_status') @Default('PENDING') String kycStatus,
  }) = _AuthUserModel;

  factory AuthUserModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserModelFromJson(json);

  AuthUser toEntity() => AuthUser(
    id: id,
    firstNameAr: firstNameAr,
    lastNameAr: lastNameAr,
    email: email,
    phone: phone,
    kycStatus: kycStatus,
  );
}
