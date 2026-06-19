import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/question_model.dart';

abstract class QaRemoteDataSource {
  Future<List<QuestionModel>> getQuestions(String auctionId);
  Future<void> askQuestion(String auctionId, String question);
}

@LazySingleton(as: QaRemoteDataSource)
class QaRemoteDataSourceImpl implements QaRemoteDataSource {
  final ApiClient client;
  QaRemoteDataSourceImpl(this.client);

  @override
  Future<List<QuestionModel>> getQuestions(String auctionId) async {
    final data = await client.get(ApiConstants.auctionQuestions(auctionId));
    return (data as List)
        .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> askQuestion(String auctionId, String question) async {
    await client.post(
      ApiConstants.auctionQuestions(auctionId),
      body: {'question': question},
    );
  }
}
