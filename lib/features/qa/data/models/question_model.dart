import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/auction_question.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const QuestionModel._();

  const factory QuestionModel({
    required String id,
    String? question,
    String? answer,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  AuctionQuestion toEntity() => AuctionQuestion(
        id: id,
        question: question ?? '',
        answer: answer,
        createdAt: DateTime.tryParse(createdAt ?? '') ?? DateTime.now(),
      );
}
