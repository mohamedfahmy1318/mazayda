import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/kyc_entities.dart';
import '../../domain/repositories/kyc_repository.dart';
import '../cubit/kyc_cubit.dart';
import '../widgets/doc_upload_tile.dart';

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

class _KycView extends StatefulWidget {
  const _KycView();
  @override
  State<_KycView> createState() => _KycViewState();
}

class _KycViewState extends State<_KycView> {
  final _firstFr = TextEditingController();
  final _lastFr = TextEditingController();
  final _father = TextEditingController();
  final _motherName = TextEditingController();
  final _motherSurname = TextEditingController();
  final _address = TextEditingController();
  final _postal = TextEditingController();
  final _profession = TextEditingController();
  final _idNumber = TextEditingController();
  final _income = TextEditingController();

  int? _wilayaId;
  int? _communeId;

  @override
  void dispose() {
    for (final c in [
      _firstFr,
      _lastFr,
      _father,
      _motherName,
      _motherSurname,
      _address,
      _postal,
      _profession,
      _idNumber,
      _income,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  /// اختيار/تصوير المستند عبر image_picker ثم رفعه.
  Future<void> _pickAndUpload(KycDocType type) async {
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
    if (file == null || !mounted) return;
    context.read<KycCubit>().uploadDoc(type, file.path);
  }

  void _submit(KycCubit cubit) {
    cubit.submit(KycSubmitParams(
      firstNameFr: _firstFr.text.trim(),
      lastNameFr: _lastFr.text.trim(),
      fatherName: _father.text.trim(),
      motherName: _motherName.text.trim(),
      motherSurname: _motherSurname.text.trim(),
      address: _address.text.trim(),
      wilayaId: _wilayaId ?? 0,
      communeId: _communeId ?? 0,
      postalCode: _postal.text.trim(),
      profession: _profession.text.trim(),
      expectedIncome: int.tryParse(_income.text.trim()) ?? 0,
      idNumber: _idNumber.text.trim(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('التحقق من الهوية (KYC)')),
      body: BlocConsumer<KycCubit, KycState>(
        listener: (context, state) {
          if (state.submitted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('تم إرسال طلبك للمراجعة')),
            );
            Navigator.pop(context);
          } else if (state.error != null && state.fieldErrors == null) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error!)));
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
              message: state.error ?? 'خطأ',
              onRetry: cubit.init,
            );
          }

          final errors = state.fieldErrors;

          return SingleChildScrollView(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _statusBanner(state.kyc?.status),
                SizedBox(height: 16.h),

                Text('المستندات المطلوبة',
                    style: TextStyle(
                        fontSize: 14.sp, fontWeight: FontWeight.w500)),
                SizedBox(height: 10.h),
                ...[
                  KycDocType.idFront,
                  KycDocType.idBack,
                  KycDocType.selfieWithId,
                  KycDocType.photoBiometric,
                ].map((t) => DocUploadTile(
                      type: t,
                      isUploading: state.uploading.contains(t),
                      isUploaded: state.uploaded.contains(t),
                      onTap: () => _pickAndUpload(t),
                    )),

                SizedBox(height: 16.h),
                Text('البيانات الشخصية',
                    style: TextStyle(
                        fontSize: 14.sp, fontWeight: FontWeight.w500)),
                SizedBox(height: 12.h),

                _field('الاسم بالفرنسية', _firstFr,
                    error: errors?['first_name_fr']?.first),
                _field('اللقب بالفرنسية', _lastFr,
                    error: errors?['last_name_fr']?.first),
                _field('اسم الأب', _father,
                    error: errors?['father_name']?.first),
                _field('اسم الأم', _motherName,
                    error: errors?['mother_name']?.first),
                _field('لقب الأم', _motherSurname,
                    error: errors?['mother_surname']?.first),
                _field('المهنة', _profession,
                    error: errors?['profession']?.first),

                // الولاية
                _dropdownWilaya(state, cubit),
                SizedBox(height: 12.h),
                // البلدية
                _dropdownCommune(state),
                SizedBox(height: 12.h),

                _field('الرمز البريدي', _postal,
                    keyboard: TextInputType.number,
                    error: errors?['postal_code']?.first),
                _field('الدخل الشهري المتوقع', _income,
                    keyboard: TextInputType.number,
                    error: errors?['expected_income']?.first),
                _field('رقم بطاقة الهوية', _idNumber,
                    error: errors?['id_number']?.first),

                SizedBox(height: 12.h),
                PrimaryButton(
                  label: 'إنهاء التحقق',
                  icon: Icons.check_circle_outline,
                  isLoading: state.submitting,
                  onPressed:
                      cubit.requiredDocsUploaded ? () => _submit(cubit) : null,
                ),
                if (!cubit.requiredDocsUploaded) ...[
                  SizedBox(height: 8.h),
                  Text(
                    'ارفع المستندات الثلاثة المطلوبة أولًا',
                    style:
                        TextStyle(fontSize: 11.sp, color: AppColors.textHint),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _statusBanner(KycAccountStatus? status) {
    final s = status ?? KycAccountStatus.pending;
    final (Color bg, Color fg, IconData icon) = switch (s) {
      KycAccountStatus.verified => (
          AppColors.successBg,
          AppColors.success,
          Icons.verified_outlined
        ),
      KycAccountStatus.underReview => (
          AppColors.infoBg,
          AppColors.info,
          Icons.hourglass_top_outlined
        ),
      KycAccountStatus.rejected => (
          AppColors.dangerBg,
          AppColors.danger,
          Icons.cancel_outlined
        ),
      _ => (AppColors.warningBg, AppColors.warning, Icons.info_outline),
    };
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Icon(icon, size: 18.sp, color: fg),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              s == KycAccountStatus.pending
                  ? 'أكمل النموذج خلال 30 يومًا وإلا سيُعلَّق الحساب'
                  : 'الحالة: ${s.labelAr}',
              style: TextStyle(fontSize: 11.sp, color: fg, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget _field(
    String label,
    TextEditingController controller, {
    TextInputType? keyboard,
    String? error,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500)),
          SizedBox(height: 6.h),
          TextField(
            controller: controller,
            keyboardType: keyboard,
            decoration: InputDecoration(errorText: error),
          ),
        ],
      ),
    );
  }

  Widget _dropdownWilaya(KycState state, KycCubit cubit) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('الولاية',
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500)),
        SizedBox(height: 6.h),
        DropdownButtonFormField<int>(
          initialValue: _wilayaId,
          isExpanded: true,
          items: state.wilayas
              .map((w) => DropdownMenuItem(value: w.id, child: Text(w.name)))
              .toList(),
          onChanged: (id) {
            setState(() {
              _wilayaId = id;
              _communeId = null;
            });
            if (id != null) cubit.loadCommunes(id);
          },
        ),
      ],
    );
  }

  Widget _dropdownCommune(KycState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('البلدية',
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500)),
        SizedBox(height: 6.h),
        DropdownButtonFormField<int>(
          initialValue: _communeId,
          isExpanded: true,
          items: state.communes
              .map((c) => DropdownMenuItem(value: c.id, child: Text(c.name)))
              .toList(),
          onChanged: (id) => setState(() => _communeId = id),
        ),
      ],
    );
  }
}
