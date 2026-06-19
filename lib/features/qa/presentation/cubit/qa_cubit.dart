import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/auction_question.dart';
import '../../domain/repositories/qa_repository.dart';

part 'qa_cubit.freezed.dart';

@freezed
class QaState with _$QaState {
  const factory QaState({
    @Default(true) bool loading,
    @Default(<AuctionQuestion>[]) List<AuctionQuestion> items,
    @Default(false) bool asking,
    @Default(false) bool asked,
    String? error,
  }) = _QaState;
}

@injectable
class QaCubit extends Cubit<QaState> {
  final GetQuestions _getQuestions;
  final AskQuestion _askQuestion;

  QaCubit(this._getQuestions, this._askQuestion) : super(const QaState());

  late String _auctionId;

  Future<void> load(String auctionId) async {
    _auctionId = auctionId;
    emit(state.copyWith(loading: true, error: null));
    final res = await _getQuestions(auctionId);
    res.fold(
      (f) => emit(state.copyWith(loading: false, error: _msg(f))),
      (items) => emit(state.copyWith(loading: false, items: items)),
    );
  }

  Future<void> ask(String question) async {
    emit(state.copyWith(asking: true, asked: false, error: null));
    final res = await _askQuestion(
      AskQuestionParams(auctionId: _auctionId, question: question),
    );
    res.fold(
      (f) => emit(state.copyWith(asking: false, error: _msg(f))),
      (_) {
        emit(state.copyWith(asking: false, asked: true));
        load(_auctionId); // أعد التحميل لإظهار السؤال الجديد
      },
    );
  }

  String _msg(Failure f) => switch (f) {
        ServerFailure(:final message) => message,
        NetworkFailure(:final message) => message,
        UnauthorizedFailure(:final message) => message,
        UnexpectedFailure(:final message) => message,
      };
}
