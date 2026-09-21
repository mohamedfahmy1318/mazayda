import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/final_payment_preview.dart';
import '../../domain/usecases/payments_usecases.dart';

part 'final_payment_preview_cubit.freezed.dart';

@freezed
abstract class FinalPaymentPreviewState with _$FinalPaymentPreviewState {
  const factory FinalPaymentPreviewState({
    @Default(true) bool loading,
    FinalPaymentPreview? preview,
    String? error,
  }) = _FinalPaymentPreviewState;
}

@injectable
class FinalPaymentPreviewCubit extends Cubit<FinalPaymentPreviewState> {
  final GetFinalPaymentPreview _getPreview;

  FinalPaymentPreviewCubit(this._getPreview)
    : super(const FinalPaymentPreviewState());

  /// يجيب تفصيل الرسوم. بيرجّع 403 لو المستخدم مش الفايز — بنعرض رسالة
  /// السيرفر زي ما هي.
  Future<void> load(String auctionId) async {
    emit(state.copyWith(loading: true, error: null));
    final res = await _getPreview(auctionId);
    if (isClosed) return;
    res.fold(
      (f) => emit(state.copyWith(loading: false, error: f.message)),
      (p) => emit(state.copyWith(loading: false, preview: p)),
    );
  }
}
