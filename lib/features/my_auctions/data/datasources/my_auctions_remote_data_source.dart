import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/participation_model.dart';

abstract class MyAuctionsRemoteDataSource {
  Future<List<ParticipationModel>> getMyAuctions(String tab);
}

@LazySingleton(as: MyAuctionsRemoteDataSource)
class MyAuctionsRemoteDataSourceImpl implements MyAuctionsRemoteDataSource {
  final ApiClient client;
  MyAuctionsRemoteDataSourceImpl(this.client);

  @override
  Future<List<ParticipationModel>> getMyAuctions(String tab) async {
    final data = await client.get(ApiConstants.myAuctions, query: {'tab': tab});
    return (data as List)
        .map((e) => ParticipationModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
