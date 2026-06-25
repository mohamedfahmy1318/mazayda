import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/kyc_entities.dart';
import '../cubit/kyc_cubit.dart';
import '../widgets/doc_upload_tile.dart';
import '../widgets/kyc_form.dart';
import '../widgets/kyc_status_banner.dart';

/// المستندات المطلوب رفعها بالترتيب المعروض.
const _docTypes = [
  KycDocType.idFront,
  KycDocType.idBack,
  KycDocType.selfieWithId,
  KycDocType.photoBiometric,
];

class KycPage extends StatelessWidget {
  const KycPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<KycCubit>()..init(),
      child: const _KycView(),
    );
  }
}

class _KycView extends StatelessWidget {
  const _KycView();

  /// اختيار/تصوير المستند عبر image_picker ثم رفعه.
  Future<void> _pickAndUpload(BuildContext context, KycDocType type) async {
    final picker = ImagePicker();
    // الصورة البيومترية والسيلفي من الكاميرا، الباقي من المعرض
    final source =
        (type == KycDocType.photoBiometric || type == KycDocType.selfieWithId)
        ? ImageSource.camera
        : ImageSource.gallery;
    final file = await picker.pickImage(
      source: source,
      imageQuality: 80, // ضغط للبقاء تحت 1MB (متطلب الـ spec)
      maxWidth: 1600,
    );
    if (file == null || !context.mounted) return;
    context.read<KycCubit>().uploadDoc(type, file.path);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(t.kycTitle)),
      body: BlocConsumer<KycCubit, KycState>(
        listener: (context, state) {
          if (state.submitted) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(t.kycSubmitted)));
            Navigator.pop(context);
          } else if (state.error != null && state.fieldErrors == null) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.error!)));
          }
        },
        builder: (context, state) {
          final cubit = context.read<KycCubit>();

          if (state.status == KycViewStatus.loading ||
              state.status == KycViewStatus.initial) {
            return const LoadingView();
          }
          if (state.status == KycViewStatus.error) {
            return ErrorView(
              message: state.error ?? t.errorGeneric,
              onRetry: cubit.init,
            );
          }

          return SingleChildScrollView(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KycStatusBanner(status: state.kyc?.status),
                SizedBox(height: 16.h),
                Text(
                  t.requiredDocuments,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10.h),
                for (final docType in _docTypes)
                  DocUploadTile(
                    type: docType,
                    isUploading: state.uploading.contains(docType),
                    isUploaded: state.uploaded.contains(docType),
                    onTap: () => _pickAndUpload(context, docType),
                  ),
                SizedBox(height: 16.h),
                KycForm(
                  wilayas: state.wilayas,
                  communes: state.communes,
                  fieldErrors: state.fieldErrors,
                  submitting: state.submitting,
                  canSubmit: cubit.requiredDocsUploaded,
                  onWilayaSelected: cubit.loadCommunes,
                  onSubmit: cubit.submit,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
