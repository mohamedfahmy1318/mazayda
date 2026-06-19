import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/profile_model.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileModel> getProfile();
  Future<ProfileModel> updateProfile(Map<String, dynamic> body);
}

@LazySingleton(as: ProfileRemoteDataSource)
class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final ApiClient client;
  ProfileRemoteDataSourceImpl(this.client);

  @override
  Future<ProfileModel> getProfile() async {
    final data = await client.get(ApiConstants.profile);
    return ProfileModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<ProfileModel> updateProfile(Map<String, dynamic> body) async {
    final data = await client.put(ApiConstants.profile, body: body);
    return ProfileModel.fromJson(data as Map<String, dynamic>);
  }
}
