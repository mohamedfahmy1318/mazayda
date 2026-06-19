import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/realtime/realtime_service.dart';
import '../../domain/entities/bid_entities.dart';
import '../../domain/usecases/bidding_usecases.dart';

part 'bidding_cubit.freezed.dart';

@freezed
class BiddingState with _$BiddingState {
  const factory BiddingState({
    @Default(true) bool loading,
    @Default(<BidEntry>[]) List<BidEntry> bids,
    @Default(0) int currentPrice,
    @Default('') String currentPriceFormatted,
    @Default(0) int bidCount,
    @Default(false) bool isBiddable,
    @Default(false) bool hasEnded,
    @Default(false) bool placingBid,
    @Default(false) bool isLive, // متصل بالـ realtime؟
    String? error, // خطأ عام
    String? bidError, // خطأ قاعدة المزايدة (تحت errors.amount)
  }) = _BiddingState;
}

@injectable
class BiddingCubit extends Cubit<BiddingState> {
  final GetLatestBids _getBids;
  final GetPrice _getPrice;
  final PlaceBid _placeBid;
  final RealtimeService _realtime;

  BiddingCubit(this._getBids, this._getPrice, this._placeBid, this._realtime)
      : super(const BiddingState());

  Timer? _poll;
  late String _auctionId;
  String? _channel;

  /// فتح الشاشة: حمّل السجل + اشترك في الـ realtime + شغّل fallback بطيء.
  Future<void> start(String auctionId) async {
    _auctionId = auctionId;
    await _loadBids();
    await _tick(); // أول قراءة فورية

    // 1) الاشتراك في قناة المزاد عبر Pusher (المصدر الأساسي للتحديث اللحظي)
    await _subscribeRealtime();

    // 2) polling بطيء كـ fallback (كل 10 ثوانٍ) لو الـ socket فصل
    _poll = Timer.periodic(const Duration(seconds: 10), (_) => _tick());
  }

  Future<void> _subscribeRealtime() async {
    _channel = ApiConstants.auctionChannel(_auctionId);
    try {
      await _realtime.subscribe(_channel!, onEvent: _onRealtimeEvent);
      emit(state.copyWith(isLive: true));
    } catch (_) {
      // لو فشل الاتصال، نكتفي بالـ polling
      emit(state.copyWith(isLive: false));
    }
  }

  /// حدث لحظي من الخادم: سعر جديد أو مزايدة جديدة.
  void _onRealtimeEvent(String event, Map<String, dynamic> data) {
    if (event == ApiConstants.evtPriceUpdate ||
        event == ApiConstants.evtNewBid) {
      // أبسط وأأمن: نعيد القراءة من الـ API للتأكد من تطابق البيانات
      _tick();
      _loadBids();
    }
  }

  Future<void> _loadBids() async {
    final res = await _getBids(GetBidsParams(auctionId: _auctionId));
    if (isClosed) return;
    res.fold(
      (f) => emit(state.copyWith(loading: false, error: _msg(f))),
      (bids) => emit(state.copyWith(loading: false, bids: bids)),
    );
  }

  Future<void> _tick() async {
    final res = await _getPrice(_auctionId);
    if (isClosed) return;
    res.fold(
      (_) {},
      (snap) {
        emit(state.copyWith(
          currentPrice: snap.currentPrice,
          currentPriceFormatted: snap.currentPriceFormatted,
          bidCount: snap.bidCount,
          isBiddable: snap.isBiddable,
          hasEnded: snap.hasEnded,
        ));
        if (snap.bidCount != state.bids.length) _loadBids();
      },
    );
  }

  Future<void> placeBid(int amount) async {
    emit(state.copyWith(placingBid: true, bidError: null, error: null));
    final res = await _placeBid(
      PlaceBidParams(auctionId: _auctionId, amount: amount),
    );
    if (isClosed) return;
    res.fold(
      (f) {
        // خطأ القاعدة بيجي تحت errors.amount
        String? amountErr;
        if (f is ServerFailure) {
          final amountErrors = f.errors?['amount'];
          if (amountErrors != null && amountErrors.isNotEmpty) {
            amountErr = amountErrors.first;
          }
        }
        emit(state.copyWith(
          placingBid: false,
          bidError: amountErr ?? _msg(f),
        ));
      },
      (_) {
        emit(state.copyWith(placingBid: false));
        _tick(); // حدّث السعر فورًا بعد النجاح
      },
    );
  }

  String _msg(Failure f) => switch (f) {
        ServerFailure(:final message) => message,
        NetworkFailure(:final message) => message,
        UnauthorizedFailure(:final message) => message,
        UnexpectedFailure(:final message) => message,
      };

  @override
  Future<void> close() {
    _poll?.cancel();
    if (_channel != null) _realtime.unsubscribe(_channel!);
    return super.close();
  }
}
