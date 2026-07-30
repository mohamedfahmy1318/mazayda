import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../profile/domain/entities/profile.dart';
import '../../../profile/domain/usecases/get_profile.dart';
import '../../domain/entities/kyc_entities.dart';
import '../../domain/repositories/kyc_repository.dart';
import '../../domain/usecases/kyc_usecases.dart';

part 'kyc_cubit.freezed.dart';

@freezed
class KycState with _$KycState {
  const factory KycState({
    @Default(KycViewStatus.initial) KycViewStatus status,
    KycStatus? kyc,
    /// بيانات المستخدم للتعبئة المسبقة (BE-8) — `null` لو النداء فشل،
    /// وساعتها الفورم يفتح فاضي زي الأول.
    Profile? prefill,
    @Default(<Wilaya>[]) List<Wilaya> wilayas,
    @Default(<Commune>[]) List<Commune> communes,
    // أنواع المستندات اللي بترفع حاليًا (loading)
    @Default(<KycDocType>{}) Set<KycDocType> uploading,
    // أنواع المستندات اللي اترفعت بنجاح
    @Default(<KycDocType>{}) Set<KycDocType> uploaded,
    @Default(false) bool submitting,
    @Default(false) bool submitted,
    String? error,
    Map<String, List<String>>? fieldErrors,
  }) = _KycState;
}

enum KycViewStatus { initial, loading, ready, error }

@injectable
class KycCubit extends Cubit<KycState> {
  final GetKycStatus _getStatus;
  final UploadKycDocument _upload;
  final SubmitKyc _submit;
  final GetWilayas _getWilayas;
  final GetCommunes _getCommunes;
  final GetProfile _getProfile;

  KycCubit(
    this._getStatus,
    this._upload,
    this._submit,
    this._getWilayas,
    this._getCommunes,
    this._getProfile,
  ) : super(const KycState());

  /// تحميل الحالة + الولايات + بيانات التعبئة المسبقة عند فتح الشاشة.
  ///
  /// التعبئة المسبقة (BE-8) مهمة تحديدًا للمستخدم اللي طلبه اترفض ومحتاج
  /// يعدّل حقل واحد — من غيرها كان لازم يعيد كتابة الفورم كله.
  Future<void> init() async {
    emit(state.copyWith(status: KycViewStatus.loading));

    final statusRes = await _getStatus(const NoParams());
    final wilayasRes = await _getWilayas(const NoParams());
    final profileRes = await _getProfile(const NoParams());

    // فشل البروفايل ما يمنعش الشاشة — الفورم بيفتح فاضي وبس.
    final prefill = profileRes.fold((_) => null, (p) => p);

    statusRes.fold(
      (f) =>
          emit(state.copyWith(status: KycViewStatus.error, error: f.message)),
      (kyc) {
        final uploaded = <KycDocType>{
          for (final t in KycDocType.values)
            if (kyc.hasDoc(t)) t,
        };
        emit(
          state.copyWith(
            status: KycViewStatus.ready,
            kyc: kyc,
            prefill: prefill,
            uploaded: uploaded,
            wilayas: wilayasRes.getOrElse(() => const []),
          ),
        );
      },
    );

    // الولاية معروفة من البروفايل → نحمّل بلدياتها فورًا عشان المنسدلة
    // تفتح متعبّية بدل ما تكون فاضية لحد ما المستخدم يعيد اختيار الولاية.
    final wilayaId = prefill?.wilayaId;
    if (wilayaId != null && !isClosed) await loadCommunes(wilayaId);
  }

  Future<void> loadCommunes(int wilayaId) async {
    final res = await _getCommunes(wilayaId);
    res.fold((_) {}, (communes) => emit(state.copyWith(communes: communes)));
  }

  Future<void> uploadDoc(KycDocType type, String filePath) async {
    emit(state.copyWith(uploading: {...state.uploading, type}));
    final res = await _upload(UploadDocParams(type: type, filePath: filePath));
    if (isClosed) return;
    res.fold(
      (f) => emit(
        state.copyWith(
          uploading: {...state.uploading}..remove(type),
          error: f.message,
        ),
      ),
      (_) => emit(
        state.copyWith(
          uploading: {...state.uploading}..remove(type),
          uploaded: {...state.uploaded, type},
        ),
      ),
    );
  }

  Future<void> submit(KycSubmitParams params) async {
    emit(state.copyWith(submitting: true, error: null, fieldErrors: null));
    final res = await _submit(params);
    if (isClosed) return;
    res.fold(
      (f) => emit(
        state.copyWith(
          submitting: false,
          error: f.message,
          fieldErrors: f is ServerFailure ? f.errors : null,
        ),
      ),
      (_) => emit(state.copyWith(submitting: false, submitted: true)),
    );
  }

  /// كل المستندات الثلاثة المطلوبة اترفعت؟
  bool get requiredDocsUploaded =>
      state.uploaded.contains(KycDocType.idFront) &&
      state.uploaded.contains(KycDocType.idBack) &&
      state.uploaded.contains(KycDocType.selfieWithId);
}
