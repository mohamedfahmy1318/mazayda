import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/network/token_storage.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../profile/domain/usecases/get_profile.dart';
import '../../domain/entities/auction_viewer.dart';
import '../../domain/usecases/get_auction_by_id.dart';

part 'auction_detail_cubit.freezed.dart';

/// حالات تفاصيل المزاد.
@freezed
sealed class AuctionDetailState with _$AuctionDetailState {
  const factory AuctionDetailState.initial() = AuctionDetailInitial;
  const factory AuctionDetailState.loading() = AuctionDetailLoading;

  /// [detail] المزاد + سياق المستخدم (لو الـ API رجّعه).
  /// [isAuthenticated] من حالة التطبيق نفسه — مش من الـ API.
  /// [account] أعلام الحساب من البروفايل، بتتجاب فقط لما `viewer` يغيب.
  const factory AuctionDetailState.loaded(
    AuctionDetail detail, {
    @Default(false) bool isAuthenticated,
    ViewerAccountFlags? account,
  }) = AuctionDetailLoaded;

  const factory AuctionDetailState.error(String message) = AuctionDetailError;
}

@injectable
class AuctionDetailCubit extends Cubit<AuctionDetailState> {
  final GetAuctionById _getAuctionById;
  final GetProfile _getProfile;
  final TokenStorage _tokenStorage;

  AuctionDetailCubit(this._getAuctionById, this._getProfile, this._tokenStorage)
    : super(const AuctionDetailState.initial());

  Future<void> load(String id) async {
    emit(const AuctionDetailState.loading());

    final result = await _getAuctionById(id);
    if (isClosed) return;

    await result.fold(
      (failure) async => emit(AuctionDetailState.error(failure.message)),
      (detail) async {
        final isAuthed = await _tokenStorage.hasTokens;
        if (isClosed) return;

        // الـ API بيرجّع viewer=null لكل مستخدمي الموبايل (مسارات المزادات
        // عامة ومش بتشغّل حارس Sanctum — طلب BE-15). فلما يغيب وإحنا
        // مسجّلين دخول، بنجيب أعلام الحساب من البروفايل عشان على الأقل
        // بوابات الحساب تفضل دقيقة.
        // ملاحظة: النداء الإضافي ده بيختفي تلقائيًا أول ما الباك يتصلح.
        ViewerAccountFlags? account;
        if (isAuthed && detail.viewer == null) {
          final profileRes = await _getProfile(const NoParams());
          if (isClosed) return;
          account = profileRes.fold(
            (_) => null, // فشل البروفايل ما يمنعش عرض الصفحة
            (p) => ViewerAccountFlags(
              canBid: p.canBid,
              isKycComplete: p.isKycComplete,
              hasCommerceRegister: p.hasCommerceRegister,
              isBlacklisted: p.isBlacklisted,
            ),
          );
        }

        emit(
          AuctionDetailState.loaded(
            detail,
            isAuthenticated: isAuthed,
            account: account,
          ),
        );
      },
    );
  }
}
