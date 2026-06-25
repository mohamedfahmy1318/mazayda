import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/appeal.dart';
import '../../domain/repositories/appeals_repository.dart';

part 'appeals_cubit.freezed.dart';

@freezed
class AppealsState with _$AppealsState {
  const factory AppealsState({
    @Default(true) bool loading,
    @Default(<Appeal>[]) List<Appeal> items,
    @Default(false) bool submitting,
    @Default(false) bool submitted,
    String? error,
  }) = _AppealsState;
}

@injectable
class AppealsCubit extends Cubit<AppealsState> {
  final GetAppeals _getAppeals;
  final SubmitAppeal _submitAppeal;

  AppealsCubit(this._getAppeals, this._submitAppeal)
    : super(const AppealsState());

  Future<void> load() async {
    emit(state.copyWith(loading: true, error: null));
    final res = await _getAppeals(const NoParams());
    res.fold(
      (f) => emit(state.copyWith(loading: false, error: f.message)),
      (items) => emit(state.copyWith(loading: false, items: items)),
    );
  }

  Future<void> submit(SubmitAppealParams params) async {
    emit(state.copyWith(submitting: true, submitted: false, error: null));
    final res = await _submitAppeal(params);
    res.fold((f) => emit(state.copyWith(submitting: false, error: f.message)), (
      _,
    ) {
      emit(state.copyWith(submitting: false, submitted: true));
      load(); // أعد تحميل القائمة بعد الإضافة
    });
  }
}
