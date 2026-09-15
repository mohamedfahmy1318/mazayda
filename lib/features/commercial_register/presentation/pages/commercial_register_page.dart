import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/utils/arabic_numerals.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/commercial_register.dart';
import '../cr_constants.dart';
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
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text(t.crTitle)),
      body: BlocConsumer<CommercialRegisterCubit, CommercialRegisterState>(
        listenWhen: (p, c) =>
            (c.submitted && !p.submitted) ||
            (c.error != null && c.error != p.error),
        listener: (context, state) {
          final messenger = ScaffoldMessenger.of(context)..hideCurrentSnackBar();
          if (state.submitted) {
            messenger.showSnackBar(
              _snack(t.crSubmitted, AppColors.success, Icons.check_circle),
            );
          } else if (state.error != null) {
            messenger.showSnackBar(
              _snack(state.error!, AppColors.danger, Icons.error_outline),
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

  static SnackBar _snack(String message, Color color, IconData icon) =>
      SnackBar(
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        content: Row(
          children: [
            Icon(icon, color: AppColors.white, size: 18),
            const Gap(9),
            Expanded(child: Text(message)),
          ],
        ),
      );
}

class _Form extends StatefulWidget {
  final CommercialRegisterState state;
  const _Form({required this.state});

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final _scrollController = ScrollController();

  /// مفاتيح للسكرول لأول حقل ناقص بعد محاولة إرسال فاشلة.
  final _fieldKeys = {
    for (final f in CrFormField.values) f: GlobalKey(),
  };

  final _focusNodes = {
    for (final f in CrFormField.values) f: FocusNode(),
  };

  @override
  void dispose() {
    _scrollController.dispose();
    for (final node in _focusNodes.values) {
      node.dispose();
    }
    super.dispose();
  }

  CommercialRegisterCubit get _cubit =>
      context.read<CommercialRegisterCubit>();

  /// نضغط الزرار حتى والنموذج ناقص — الأنفع للمستخدم إنه يشوف الناقص فين
  /// بدل زرار مطفي من غير سبب واضح.
  Future<void> _submit() async {
    FocusScope.of(context).unfocus();
    final state = widget.state;
    if (!state.isValid) {
      _cubit.submit(); // بيرفع showErrors بس
      final t = AppLocalizations.of(context);
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          _CommercialRegisterView._snack(
            t.crFixErrors,
            AppColors.danger,
            Icons.error_outline,
          ),
        );
      _scrollToFirstError();
      return;
    }
    await _cubit.submit();
  }

  void _scrollToFirstError() {
    final field = widget.state.firstInvalidField;
    final ctx = field == null ? null : _fieldKeys[field]?.currentContext;
    if (ctx == null) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 380),
        curve: Curves.easeOutCubic,
        alignment: 0.15,
      );
      _focusNodes[field]?.requestFocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final state = widget.state;
    // السجل المعتمد مقفول — الحقول للعرض فقط.
    final locked = state.isLocked;
    final reduceMotion = MediaQuery.disableAnimationsOf(context);

    final sections = <Widget>[
      CrStatusBanner(register: state.register),
      if (!locked) ...[Gap(12.h), _ProgressCard(state: state)],
      Gap(18.h),
      _SectionTitle(icon: Icons.storefront_outlined, text: t.crSectionCompany),
      Gap(12.h),
      _card(child: _companyFields(context, locked)),
      Gap(18.h),
      _SectionTitle(
        icon: Icons.folder_open_outlined,
        text: t.crSectionDocuments,
      ),
      Gap(6.h),
      Text(
        t.crDocumentsNote,
        style: TextStyle(
          fontSize: 10.5.sp,
          color: AppColors.textSecondary,
          height: 1.5,
        ),
      ),
      Gap(12.h),
      _documents(context, locked),
    ];

    return Column(
      children: [
        Expanded(
          child: RefreshIndicator(
            color: AppColors.primary,
            onRefresh: _cubit.load,
            child: ListView(
              controller: _scrollController,
              keyboardDismissBehavior:
                  ScrollViewKeyboardDismissBehavior.onDrag,
              padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 24.h),
              children: [
                for (var i = 0; i < sections.length; i++)
                  reduceMotion
                      ? sections[i]
                      : sections[i]
                            .animate()
                            .fadeIn(
                              delay: (28 * i).ms,
                              duration: 260.ms,
                            )
                            .slideY(
                              begin: 0.06,
                              end: 0,
                              delay: (28 * i).ms,
                              duration: 340.ms,
                              curve: Curves.easeOutCubic,
                            ),
              ],
            ),
          ),
        ),
        if (!locked) _SubmitBar(state: state, onSubmit: _submit),
      ],
    );
  }

  Widget _card({required Widget child}) => Container(
    padding: EdgeInsets.fromLTRB(13.w, 14.h, 13.w, 2.h),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(15.r),
      border: Border.all(color: AppColors.border, width: 0.5),
    ),
    child: child,
  );

  Widget _companyFields(BuildContext context, bool locked) {
    final t = AppLocalizations.of(context);
    final state = widget.state;
    final srv = state.serverErrors;

    return Column(
      children: [
        CrField(
          key: _fieldKeys[CrFormField.companyName],
          focusNode: _focusNodes[CrFormField.companyName],
          label: t.crCompanyName,
          hint: t.crCompanyNameHint,
          icon: Icons.business_outlined,
          value: state.companyName,
          enabled: !locked,
          isDone: state.isFieldDone(CrFormField.companyName),
          maxLength: CrConstants.companyNameMax,
          textCapitalization: TextCapitalization.words,
          textInputAction: TextInputAction.next,
          onChanged: _cubit.companyNameChanged,
          onBlur: () => _cubit.fieldBlurred(CrFormField.companyName),
          onSubmitted: (_) =>
              _focusNodes[CrFormField.registerNumber]?.requestFocus(),
          errorText:
              _err(context, state.visibleErrorFor(CrFormField.companyName)) ??
              srv?['company_name']?.first,
        ),
        CrField(
          key: _fieldKeys[CrFormField.registerNumber],
          focusNode: _focusNodes[CrFormField.registerNumber],
          label: t.crRegisterNumber,
          hint: t.crRegisterNumberHint,
          icon: Icons.confirmation_number_outlined,
          value: state.registerNumber,
          enabled: !locked,
          isDone: state.isFieldDone(CrFormField.registerNumber),
          maxLength: CrConstants.registerNumberMax,
          textInputAction: TextInputAction.next,
          onChanged: _cubit.registerNumberChanged,
          onBlur: () => _cubit.fieldBlurred(CrFormField.registerNumber),
          onSubmitted: (_) =>
              _focusNodes[CrFormField.taxNumber]?.requestFocus(),
          errorText:
              _err(
                context,
                state.visibleErrorFor(CrFormField.registerNumber),
              ) ??
              srv?['register_number']?.first,
        ),
        CrField(
          key: _fieldKeys[CrFormField.taxNumber],
          focusNode: _focusNodes[CrFormField.taxNumber],
          label: t.crTaxNumber,
          hint: t.crTaxNumberHint,
          icon: Icons.receipt_long_outlined,
          value: state.taxNumber,
          enabled: !locked,
          isDone: state.isFieldDone(CrFormField.taxNumber),
          // أرقام بس — عربية أو لاتينية — والعدّاد بيوضّح كام رقم فاضل.
          keyboardType: TextInputType.number,
          inputFormatters: [AppInputFormatters.anyNumeralDigitsOnly],
          maxLength: CrConstants.taxNumberDigits,
          showCounter: true,
          textInputAction: TextInputAction.next,
          onChanged: _cubit.taxNumberChanged,
          onBlur: () => _cubit.fieldBlurred(CrFormField.taxNumber),
          onSubmitted: (_) =>
              _focusNodes[CrFormField.activityType]?.requestFocus(),
          errorText:
              _err(context, state.visibleErrorFor(CrFormField.taxNumber)) ??
              srv?['tax_number']?.first,
        ),
        CrField(
          key: _fieldKeys[CrFormField.activityType],
          focusNode: _focusNodes[CrFormField.activityType],
          label: t.crActivityType,
          hint: t.crActivityTypeHint,
          icon: Icons.category_outlined,
          value: state.activityType,
          enabled: !locked,
          isDone: state.isFieldDone(CrFormField.activityType),
          maxLength: CrConstants.activityTypeMax,
          textInputAction: TextInputAction.done,
          onChanged: _cubit.activityTypeChanged,
          onBlur: () => _cubit.fieldBlurred(CrFormField.activityType),
          onSubmitted: (_) => FocusScope.of(context).unfocus(),
          errorText:
              _err(context, state.visibleErrorFor(CrFormField.activityType)) ??
              srv?['activity_type']?.first,
        ),
        _StartDateField(
          fieldKey: _fieldKeys[CrFormField.startDate]!,
          focusNode: _focusNodes[CrFormField.startDate]!,
          state: state,
          locked: locked,
          errorText:
              _err(context, state.visibleErrorFor(CrFormField.startDate)) ??
              srv?['start_date']?.first,
        ),
      ],
    );
  }

  Widget _documents(BuildContext context, bool locked) {
    final t = AppLocalizations.of(context);
    final state = widget.state;

    return Column(
      children: [
        CrDocumentTile(
          type: CrDocumentType.register,
          label: t.crRegisterDocument,
          pickedPath: state.registerDocumentPath,
          onFile: state.register?.hasDocument(CrDocumentType.register) ?? false,
          enabled: !locked,
          errorText: _docError(context, CrDocumentType.register),
          onPick: (source) => _pick(context, CrDocumentType.register, source),
        ),
        CrDocumentTile(
          type: CrDocumentType.taxCard,
          label: t.crTaxCardDocument,
          pickedPath: state.taxCardDocumentPath,
          onFile: state.register?.hasDocument(CrDocumentType.taxCard) ?? false,
          enabled: !locked,
          errorText: _docError(context, CrDocumentType.taxCard),
          onPick: (source) => _pick(context, CrDocumentType.taxCard, source),
        ),
      ],
    );
  }

  /// «مطلوب» على المستند ما تظهرش غير بعد محاولة إرسال — قبل كده البطاقة
  /// نفسها بتوضّح إن مفيش نسخة. خطأ السيرفر بيظهر دايمًا.
  String? _docError(BuildContext context, CrDocumentType type) {
    final serverError =
        widget.state.serverErrors?[type.uploadField]?.first;
    if (serverError != null) return serverError;
    if (!widget.state.showErrors) return null;
    return _err(context, widget.state.documentError(type));
  }

  String? _err(BuildContext context, CrFieldError? e) {
    if (e == null) return null;
    final t = AppLocalizations.of(context);
    return switch (e) {
      CrFieldError.required => t.valRequired,
      CrFieldError.tooShort => t.valTooShort,
      CrFieldError.tooLong => t.valTooLong,
      CrFieldError.incomplete => t.crRegisterNumberIncomplete,
      CrFieldError.digitsOnly => t.crTaxNumberDigitsOnly,
      CrFieldError.taxLength => t.crTaxNumberLength(
        CrConstants.taxNumberDigits,
      ),
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
    final cubit = _cubit;

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

/// عنوان قسم داخل النموذج.
class _SectionTitle extends StatelessWidget {
  final IconData icon;
  final String text;

  const _SectionTitle({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 17.sp, color: AppColors.primary),
        Gap(7.w),
        Text(
          text,
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}

/// شريط تقدّم صغير — بيقول للمستخدم فاضل كام خطوة قبل ما يبعت.
class _ProgressCard extends StatelessWidget {
  final CommercialRegisterState state;
  const _ProgressCard({required this.state});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final done = state.completedSteps;
    const total = CommercialRegisterState.totalSteps;
    final ratio = done / total;
    final complete = done == total;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 11.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(13.r),
        border: Border.all(color: AppColors.border, width: 0.5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.crProgress(done, total),
                  style: TextStyle(
                    fontSize: 11.5.sp,
                    fontWeight: FontWeight.w600,
                    color: complete
                        ? AppColors.success
                        : AppColors.textSecondary,
                  ),
                ),
                Gap(7.h),
                ClipRRect(
                  borderRadius: BorderRadius.circular(6.r),
                  child: TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0, end: ratio),
                    duration: const Duration(milliseconds: 420),
                    curve: Curves.easeOutCubic,
                    builder: (context, value, _) => LinearProgressIndicator(
                      value: value,
                      minHeight: 5.h,
                      backgroundColor: AppColors.border,
                      color: complete ? AppColors.success : AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(11.w),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            transitionBuilder: (child, animation) =>
                ScaleTransition(scale: animation, child: child),
            child: Icon(
              complete
                  ? Icons.task_alt_rounded
                  : Icons.pending_actions_outlined,
              key: ValueKey(complete),
              size: 21.sp,
              color: complete ? AppColors.success : AppColors.textHint,
            ),
          ),
        ],
      ),
    );
  }
}

/// شريط الإرسال الملتصق بأسفل الشاشة — بيفضل ظاهر مهما طال النموذج.
class _SubmitBar extends StatelessWidget {
  final CommercialRegisterState state;
  final Future<void> Function() onSubmit;

  const _SubmitBar({required this.state, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Container(
      padding: EdgeInsets.fromLTRB(16.w, 10.h, 16.w, 10.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: const Border(top: BorderSide(color: AppColors.border)),
        boxShadow: [
          BoxShadow(
            color: AppColors.textPrimary.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: PrimaryButton(
          label: state.register?.isEmpty ?? true ? t.crSubmit : t.crResubmit,
          icon: Icons.send,
          isLoading: state.submitting,
          onPressed: state.submitting ? null : onSubmit,
        ),
      ),
    );
  }
}

/// حقل تاريخ بدء السجل — الـ picker نفسه بيمنع اختيار تاريخ مستقبلي.
class _StartDateField extends StatelessWidget {
  final GlobalKey fieldKey;
  final FocusNode focusNode;
  final CommercialRegisterState state;
  final bool locked;
  final String? errorText;

  const _StartDateField({
    required this.fieldKey,
    required this.focusNode,
    required this.state,
    required this.locked,
    required this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final cubit = context.read<CommercialRegisterCubit>();
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    return CrField(
      key: fieldKey,
      focusNode: focusNode,
      label: t.crStartDate,
      hint: t.crStartDateHint,
      value: state.startDate ?? '',
      enabled: !locked,
      readOnly: true,
      isDone: state.isFieldDone(CrFormField.startDate),
      icon: Icons.event_outlined,
      errorText: errorText,
      onTap: locked
          ? null
          : () async {
              FocusScope.of(context).unfocus();
              final picked = await showDatePicker(
                context: context,
                initialDate: DateTime.tryParse(state.startDate ?? '') ?? today,
                firstDate: DateTime(1960),
                lastDate: today,
                helpText: t.crStartDate,
              );
              if (picked != null) {
                cubit.startDateChanged(picked);
              } else {
                cubit.fieldBlurred(CrFormField.startDate);
              }
            },
      onChanged: (_) {},
    );
  }
}
