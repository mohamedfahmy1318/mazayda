import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/kyc_entities.dart';
import '../../domain/repositories/kyc_repository.dart';
import '../../domain/usecases/kyc_usecases.dart';

part 'kyc_cubit.freezed.dart';

@freezed
class KycState with _$KycState {
  const factory KycState({
    @Default(KycViewStatus.initial) KycViewStatus status,
    KycStatus? kyc,
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

  KycCubit(
    this._getStatus,
    this._upload,
    this._submit,
    this._getWilayas,
    this._getCommunes,
  ) : super(const KycState());

  /// تحميل الحالة + الولايات معًا عند فتح الشاشة.
  Future<void> init() async {
    emit(state.copyWith(status: KycViewStatus.loading));

    final statusRes = await _getStatus(const NoParams());
    final wilayasRes = await _getWilayas(const NoParams());

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
            uploaded: uploaded,
            wilayas: wilayasRes.getOrElse(() => const []),
          ),
        );
      },
    );
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
