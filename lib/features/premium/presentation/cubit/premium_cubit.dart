import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/session/account_cache.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../payments/domain/entities/payment_entities.dart';
import '../../../payments/domain/entities/payment_rejection.dart';
import '../../domain/entities/subscription.dart';
import '../../domain/usecases/premium_usecases.dart';

part 'premium_cubit.freezed.dart';

@freezed
abstract class PremiumState with _$PremiumState {
  const PremiumState._();

  const factory PremiumState({
    @Default(true) bool loading,
    PremiumOverview? overview,

    /// باقة بيتم شراؤها دلوقتي — بنعطّل باقي الأزرار أثناءها.
    String? busyPlanCode,

    /// جاري إيقاف التجديد التلقائي.
    @Default(false) bool cancelling,

    String? error,
  }) = _PremiumState;

  Subscription? get subscription => overview?.subscription;
  List<SubscriptionPlan> get plans => overview?.plans ?? const [];
  bool get isPremium => overview?.isPremium ?? false;
}

/// شاشة اشتراك Premium — تعديلات العميل 24 · 25.
///
/// الدفع نفسه بيمرّ على نفس بوابة المدفوعات المستخدمة في المزايدات، فالـ
/// cubit ده بيوقف عند `PaymentInit` وبيسيب تشغيل الـ WebView والاستطلاع
/// لمنسّق الدفع الموجود.
@injectable
class PremiumCubit extends Cubit<PremiumState> {
  final GetPremiumOverview _getOverview;
  final SubscribeToPlan _subscribe;
  final CancelAutoRenew _cancelAutoRenew;
  final AccountCache _accountCache;

  PremiumCubit(
    this._getOverview,
    this._subscribe,
    this._cancelAutoRenew,
    this._accountCache,
  ) : super(const PremiumState());

  Future<void> load() async {
    emit(state.copyWith(loading: true, error: null));
    final res = await _getOverview(const NoParams());
    if (isClosed) return;

    await res.fold(
      (f) async => emit(state.copyWith(loading: false, error: f.message)),
      (overview) async {
        // نحدّث الكاش فورًا — شاشات تانية بتقرا منه من غير نداء شبكة.
        await _accountCache.save(isPremium: overview.isPremium);
        if (isClosed) return;
        emit(state.copyWith(loading: false, overview: overview));
      },
    );
  }

  /// يبدأ دفع الاشتراك ويرجّع بيانات البوابة للواجهة تفتحها.
  /// بيرجّع `null` لو الطلب فشل (الخطأ بيتحط في الحالة).
  Future<PaymentInit?> startSubscription(String planCode) async {
    if (state.busyPlanCode != null) return null;
    emit(state.copyWith(busyPlanCode: planCode, error: null));

    final res = await _subscribe(planCode);
    if (isClosed) return null;

    return res.fold(
      (f) {
        emit(state.copyWith(busyPlanCode: null, error: f.message));
        // الباقة اتوقفت من الأدمن والشاشة لسه عارضاها — بنعيد القراءة عشان
        // تختفي، وإلا المستخدم هيفضل يضغط على باقة مش موجودة.
        final code = f is ServerFailure ? f.code : null;
        if (PaymentRejectionCodeX.fromApi(code) ==
            PaymentRejectionCode.planUnavailable) {
          load();
        }
        return null;
      },
      (init) {
        emit(state.copyWith(busyPlanCode: null));
        return init;
      },
    );
  }

  Future<void> cancelAutoRenew() async {
    emit(state.copyWith(cancelling: true, error: null));
    final res = await _cancelAutoRenew(const NoParams());
    if (isClosed) return;

    res.fold(
      (f) => emit(state.copyWith(cancelling: false, error: f.message)),
      (updated) {
        emit(state.copyWith(cancelling: false));
        // السيرفر بيرجّع اللقطة الكاملة بعد التعديل، فبنعرضها زي ما هي بدل
        // ما نركّب واحدة من حالة قديمة. لو ما رجّعش جسم بنعيد القراءة.
        if (updated == null) {
          load();
        } else {
          emit(state.copyWith(overview: updated));
          // إيقاف التجديد مابيلغيش المدة المدفوعة، بس بناخد قيمة السيرفر
          // بدل ما نفترض إنها ما اتغيرتش.
          _accountCache.save(isPremium: updated.isPremium);
        }
      },
    );
  }
}
