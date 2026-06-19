import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/auction.dart';
import '../../domain/usecases/get_auction_by_id.dart';

part 'auction_detail_cubit.freezed.dart';

/// حالات تفاصيل المزاد.
@freezed
sealed class AuctionDetailState with _$AuctionDetailState {
  const factory AuctionDetailState.initial() = AuctionDetailInitial;
  const factory AuctionDetailState.loading() = AuctionDetailLoading;
  const factory AuctionDetailState.loaded(Auction auction) = AuctionDetailLoaded;
  const factory AuctionDetailState.error(String message) = AuctionDetailError;
}

@injectable
class AuctionDetailCubit extends Cubit<AuctionDetailState> {
  final GetAuctionById _getAuctionById;

  AuctionDetailCubit(this._getAuctionById)
      : super(const AuctionDetailState.initial());

  Future<void> load(String id) async {
    emit(const AuctionDetailState.loading());
    final result = await _getAuctionById(id);
    result.fold(
      (failure) => emit(AuctionDetailState.error(_messageOf(failure))),
      (auction) => emit(AuctionDetailState.loaded(auction)),
    );
  }

  String _messageOf(Failure failure) => switch (failure) {
        ServerFailure(:final message) => message,
        NetworkFailure(:final message) => message,
        UnauthorizedFailure(:final message) => message,
        UnexpectedFailure(:final message) => message,
      };
}
