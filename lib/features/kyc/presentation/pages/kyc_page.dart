import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
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

/// حدود حجم المستندات — مطابقة لـ `KycUploadRequest`:
/// setting('kyc.biometric_max_kb', 120) و setting('kyc.doc_max_kb', 1024).
const _biometricMaxKb = 120;
const _documentMaxKb = 1024;

class _KycView extends StatelessWidget {
  const _KycView();

  /// اختيار/تصوير المستند عبر image_picker ثم رفعه.
  ///
  /// السيرفر بيقبل **JPG/PNG فقط** هنا (مش زي السجل التجاري اللي بيقبل PDF)،
  /// وسقف الحجم **بيختلف حسب النوع**: الصورة البيومترية 120 KB بينما باقي
  /// المستندات 1024 KB — عشان كده الضغط بيتظبط لكل نوع على حدة.
  Future<void> _pickAndUpload(BuildContext context, KycDocType type) async {
    final picker = ImagePicker();
    final isBiometric = type == KycDocType.photoBiometric;

    // الصورة البيومترية والسيلفي من الكاميرا، الباقي من المعرض
    final source = (isBiometric || type == KycDocType.selfieWithId)
        ? ImageSource.camera
        : ImageSource.gallery;

    // البيومترية مقاس صورة هوية (35×45 مم) فمينفعش نبعتها بنفس أبعاد المستندات.
    final file = await picker.pickImage(
      source: source,
      imageQuality: isBiometric ? 70 : 80,
      maxWidth: isBiometric ? 450 : 1600,
    );
    if (file == null || !context.mounted) return;

    // نتحقق من الحجم محليًا بدل ما السيرفر يرجّع 422 برسالة عامة.
    final maxKb = isBiometric ? _biometricMaxKb : _documentMaxKb;
    final sizeKb = (File(file.path).lengthSync() / 1024).ceil();
    if (sizeKb > maxKb) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context).kycFileTooLarge(maxKb)),
          backgroundColor: AppColors.danger,
        ),
      );
      return;
    }

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
                KycStatusBanner(
                  status: state.kyc?.status,
                ).animate().fadeIn(duration: 300.ms),
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
                  prefill: state.prefill,
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
