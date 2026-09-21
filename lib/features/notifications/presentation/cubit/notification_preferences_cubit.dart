import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/notification_preferences.dart';
import '../../domain/usecases/notifications_usecases.dart';

part 'notification_preferences_cubit.freezed.dart';

@freezed
abstract class NotificationPreferencesState
    with _$NotificationPreferencesState {
  const NotificationPreferencesState._();

  const factory NotificationPreferencesState({
    @Default(true) bool loading,
    @Default(false) bool saving,

    /// آخر نسخة محفوظة على السيرفر — مرجع المقارنة.
    NotificationPreferences? saved,

    /// النسخة اللي المستخدم بيعدّل فيها دلوقتي.
    NotificationPreferences? draft,

    String? error,

    /// اتحفظ بنجاح — الواجهة بتعرض تأكيد ثم تصفّره.
    @Default(false) bool justSaved,
  }) = _NotificationPreferencesState;

  /// فيه تعديل غير محفوظ — زرار الحفظ بيفضل مطفي غير كده.
  bool get isDirty => draft != null && saved != null && draft != saved;
}

/// تفضيلات الإشعارات — تعديلات العميل 27 · 28 · 30.
///
/// التعديل محلي لحد ما المواطن يدوس حفظ: تبديل كل خانة على حدة كان هيبعت
/// نداء لكل ضغطة، وهيسيب الشاشة في حالة نص محفوظة لو الشبكة وقعت.
@injectable
class NotificationPreferencesCubit
    extends Cubit<NotificationPreferencesState> {
  final GetNotificationPreferences _get;
  final UpdateNotificationPreferences _update;

  NotificationPreferencesCubit(this._get, this._update)
    : super(const NotificationPreferencesState());

  Future<void> load() async {
    emit(state.copyWith(loading: true, error: null));
    final res = await _get(const NoParams());
    if (isClosed) return;

    res.fold(
      (f) => emit(state.copyWith(loading: false, error: f.message)),
      (prefs) => emit(
        state.copyWith(loading: false, saved: prefs, draft: prefs),
      ),
    );
  }

  void togglePush(bool value) => _edit(
    (d) => d.copyWith(channels: d.channels.copyWith(push: value)),
  );

  void toggleEmail(bool value) => _edit(
    (d) => d.copyWith(channels: d.channels.copyWith(email: value)),
  );

  void toggleSms(bool value) =>
      _edit((d) => d.copyWith(channels: d.channels.copyWith(sms: value)));

  void toggleNewAuctionAlerts(bool value) =>
      _edit((d) => d.copyWith(newAuctionAlerts: value));

  /// يضيف/يشيل نوع مزايدة من اهتمامات المواطن (تعديل رقم 27).
  void toggleCategory(String id) => _edit((d) {
    final ids = [...d.categoryIds];
    ids.contains(id) ? ids.remove(id) : ids.add(id);
    return d.copyWith(categoryIds: ids);
  });

  /// يمسح الاختيار كله = «كل الأنواع».
  void clearCategories() => _edit((d) => d.copyWith(categoryIds: const []));

  void _edit(
    NotificationPreferences Function(NotificationPreferences) change,
  ) {
    final draft = state.draft;
    if (draft == null) return;
    emit(state.copyWith(draft: change(draft), justSaved: false, error: null));
  }

  Future<void> save() async {
    final draft = state.draft;
    if (draft == null || state.saving) return;
    emit(state.copyWith(saving: true, error: null, justSaved: false));

    final res = await _update(draft);
    if (isClosed) return;

    res.fold(
      (f) => emit(state.copyWith(saving: false, error: f.message)),
      // بنعتمد ردّ السيرفر مش المسوّدة: ممكن يكون رفض قيمة (مثلًا البريد
      // للمشتركين بس) وصحّحها، فالشاشة لازم تعرض اللي اتخزّن فعلًا.
      (saved) => emit(
        state.copyWith(
          saving: false,
          saved: saved,
          draft: saved,
          justSaved: true,
        ),
      ),
    );
  }
}
