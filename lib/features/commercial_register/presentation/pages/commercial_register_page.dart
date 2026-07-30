import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/commercial_register.dart';
import '../cubit/commercial_register_cubit.dart';
import '../widgets/cr_document_tile.dart';
import '../widgets/cr_field.dart';
import '../widgets/cr_status_banner.dart';

/// شاشة السجل التجاري — مستقلة تمامًا عن الـ KYC.
/// السجل المعتمد بيفكّ المشاركة في المزادات اللي بتتطلبه.
class CommercialRegisterPage extends StatelessWidget {
  const CommercialRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CommercialRegisterCubit>()..load(),
      child: const _CommercialRegisterView(),
    );
  }
}

class _CommercialRegisterView extends StatelessWidget {
  const _CommercialRegisterView();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(t.crTitle)),
      body: BlocConsumer<CommercialRegisterCubit, CommercialRegisterState>(
        listenWhen: (p, c) =>
            (c.submitted && !p.submitted) ||
            (c.error != null && c.error != p.error),
        listener: (context, state) {
          final messenger = ScaffoldMessenger.of(context);
          if (state.submitted) {
            messenger.showSnackBar(
              SnackBar(
                content: Text(t.crSubmitted),
                backgroundColor: AppColors.success,
              ),
            );
          } else if (state.error != null) {
            messenger.showSnackBar(
              SnackBar(
                content: Text(state.error!),
                backgroundColor: AppColors.danger,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state.loading && state.register == null) {
            return const LoadingView();
          }
          if (state.error != null && state.register == null) {
            return ErrorView(
              message: state.error!,
              onRetry: context.read<CommercialRegisterCubit>().load,
            );
          }
          return _Form(state: state);
        },
      ),
    );
  }
}

class _Form extends StatelessWidget {
  final CommercialRegisterState state;
  const _Form({required this.state});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final cubit = context.read<CommercialRegisterCubit>();
    final srv = state.serverErrors;
    // السجل المعتمد مقفول — الحقول للعرض فقط.
    final locked = state.isLocked;

    return ListView(
      padding: EdgeInsets.all(16.w),
      children: [
        CrStatusBanner(register: state.register),
        Gap(16.h),
        CrField(
          label: t.crCompanyName,
          value: state.companyName,
          enabled: !locked,
          onChanged: cubit.companyNameChanged,
          errorText: _err(context, state.companyNameError) ?? srv?['company_name']?.first,
        ),
        CrField(
          label: t.crRegisterNumber,
          value: state.registerNumber,
          enabled: !locked,
          onChanged: cubit.registerNumberChanged,
          errorText:
              _err(context, state.registerNumberError) ?? srv?['register_number']?.first,
        ),
        CrField(
          label: t.crTaxNumber,
          value: state.taxNumber,
          enabled: !locked,
          onChanged: cubit.taxNumberChanged,
          errorText: _err(context, state.taxNumberError) ?? srv?['tax_number']?.first,
        ),
        CrField(
          label: t.crActivityType,
          value: state.activityType,
          enabled: !locked,
          onChanged: cubit.activityTypeChanged,
          errorText:
              _err(context, state.activityTypeError) ?? srv?['activity_type']?.first,
        ),
        _StartDateField(state: state, locked: locked),
        Gap(6.h),
        CrDocumentTile(
          type: CrDocumentType.register,
          label: t.crRegisterDocument,
          pickedPath: state.registerDocumentPath,
          onFile: state.register?.hasDocument(CrDocumentType.register) ?? false,
          enabled: !locked,
          errorText:
              _err(context, state.documentError(CrDocumentType.register)) ??
              srv?['register_document']?.first,
          onPick: (source) => _pick(context, CrDocumentType.register, source),
        ),
        CrDocumentTile(
          type: CrDocumentType.taxCard,
          label: t.crTaxCardDocument,
          pickedPath: state.taxCardDocumentPath,
          onFile: state.register?.hasDocument(CrDocumentType.taxCard) ?? false,
          enabled: !locked,
          errorText:
              _err(context, state.documentError(CrDocumentType.taxCard)) ??
              srv?['tax_card_document']?.first,
          onPick: (source) => _pick(context, CrDocumentType.taxCard, source),
        ),
        Gap(16.h),
        if (!locked)
          PrimaryButton(
            label: state.register?.isEmpty ?? true ? t.crSubmit : t.crResubmit,
            icon: Icons.send,
            isLoading: state.submitting,
            onPressed: state.canSubmit ? cubit.submit : null,
          ),
      ],
    );
  }

  /// نعرض أخطاء الحقول بعد أول محاولة إرسال بس.
  String? _err(BuildContext context, CrFieldError? e) {
    if (e == null || !state.showErrors) return null;
    final t = AppLocalizations.of(context);
    return switch (e) {
      CrFieldError.required => t.valRequired,
      CrFieldError.tooLong => t.valTooLong,
      CrFieldError.futureDate => t.crStartDateNotFuture,
      CrFieldError.fileTooLarge => t.crFileTooLarge,
    };
  }

  /// السيرفر بيقبل هنا `mimes:pdf,jpg,jpeg,png` — فبنتيح التصوير والمعرض
  /// (صور) بالإضافة لاختيار ملف PDF.
  Future<void> _pick(
    BuildContext context,
    CrDocumentType type,
    CrPickSource source,
  ) async {
    final cubit = context.read<CommercialRegisterCubit>();

    if (source == CrPickSource.file) {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: const ['pdf', 'jpg', 'jpeg', 'png'],
        withData: false,
      );
      final path = result?.files.single.path;
      if (path != null) cubit.documentPicked(type, path);
      return;
    }

    final file = await ImagePicker().pickImage(
      source: source == CrPickSource.camera
          ? ImageSource.camera
          : ImageSource.gallery,
      imageQuality: 85,
      maxWidth: 2000,
    );
    if (file != null) cubit.documentPicked(type, file.path);
  }
}

/// حقل تاريخ بدء السجل — الـ picker نفسه بيمنع اختيار تاريخ مستقبلي.
class _StartDateField extends StatelessWidget {
  final CommercialRegisterState state;
  final bool locked;

  const _StartDateField({required this.state, required this.locked});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final cubit = context.read<CommercialRegisterCubit>();
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    return CrField(
      label: t.crStartDate,
      value: state.startDate ?? '',
      enabled: !locked,
      readOnly: true,
      icon: Icons.event_outlined,
      errorText: state.showErrors && state.startDateError != null
          ? (state.startDateError == CrFieldError.futureDate
                ? t.crStartDateNotFuture
                : t.valRequired)
          : state.serverErrors?['start_date']?.first,
      onTap: locked
          ? null
          : () async {
              final picked = await showDatePicker(
                context: context,
                initialDate: DateTime.tryParse(state.startDate ?? '') ?? today,
                firstDate: DateTime(1960),
                lastDate: today,
                helpText: t.crStartDate,
              );
              if (picked != null) cubit.startDateChanged(picked);
            },
      onChanged: (_) {},
    );
  }
}
