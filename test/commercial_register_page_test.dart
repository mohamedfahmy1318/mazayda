import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mazayada/core/di/injection.dart';
import 'package:mazayada/core/errors/failures.dart';
import 'package:mazayada/features/commercial_register/domain/entities/commercial_register.dart';
import 'package:mazayada/features/commercial_register/domain/repositories/commercial_register_repository.dart';
import 'package:mazayada/features/commercial_register/domain/usecases/commercial_register_usecases.dart';
import 'package:mazayada/features/commercial_register/presentation/cubit/commercial_register_cubit.dart';
import 'package:mazayada/features/commercial_register/presentation/pages/commercial_register_page.dart';
import 'package:mazayada/l10n/app_localizations.dart';

/// repository مزيّف — يرجّع سجل حسب اللي التست عايزاه.
class _FakeRepo implements CommercialRegisterRepository {
  _FakeRepo(this.register);

  final CommercialRegister register;
  SubmitCall? lastSubmit;

  @override
  Future<Either<Failure, CommercialRegister>> getRegister() async =>
      Right(register);

  @override
  Future<Either<Failure, Unit>> submit({
    required String companyName,
    required String registerNumber,
    required String taxNumber,
    required String activityType,
    required String startDate,
    String? registerDocumentPath,
    String? taxCardDocumentPath,
  }) async {
    lastSubmit = SubmitCall(registerNumber: registerNumber, taxNumber: taxNumber);
    return const Right(unit);
  }
}

class SubmitCall {
  final String registerNumber;
  final String taxNumber;
  const SubmitCall({required this.registerNumber, required this.taxNumber});
}

Widget _app() => const ScreenUtilInit(
  designSize: Size(375, 812),
  child: MaterialApp(
    locale: Locale('ar'),
    localizationsDelegates: [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: AppLocalizations.supportedLocales,
    home: CommercialRegisterPage(),
  ),
);

Future<_FakeRepo> _pump(WidgetTester tester, CommercialRegister register) async {
  final repo = _FakeRepo(register);
  if (getIt.isRegistered<CommercialRegisterCubit>()) {
    await getIt.unregister<CommercialRegisterCubit>();
  }
  getIt.registerFactory<CommercialRegisterCubit>(
    () => CommercialRegisterCubit(
      GetCommercialRegister(repo),
      SubmitCommercialRegister(repo),
    ),
  );
  await tester.pumpWidget(_app());
  await tester.pumpAndSettle();
  return repo;
}

void main() {
  tearDown(() async {
    if (getIt.isRegistered<CommercialRegisterCubit>()) {
      await getIt.unregister<CommercialRegisterCubit>();
    }
  });

  testWidgets('الشاشة بتتبني وبتعرض الأقسام وشريط التقدّم', (tester) async {
    await _pump(tester, const CommercialRegister());
    final t = await AppLocalizations.delegate.load(const Locale('ar'));

    expect(find.text(t.crSectionCompany), findsOneWidget);
    expect(find.text(t.crProgress(0, 7)), findsOneWidget);
    expect(find.text(t.crSubmit), findsOneWidget);

    // أول Scrollable هو الليست — الباقي جوّه حقول النص.
    await tester.scrollUntilVisible(
      find.text(t.crSectionDocuments),
      250,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text(t.crSectionDocuments), findsOneWidget);
    expect(find.text(t.crRegisterDocument), findsOneWidget);
  });

  testWidgets('الإرسال بنموذج ناقص بيعرض الأخطاء بدل ما يبعت', (tester) async {
    final repo = await _pump(tester, const CommercialRegister());
    final t = await AppLocalizations.delegate.load(const Locale('ar'));

    await tester.tap(find.text(t.crSubmit));
    await tester.pumpAndSettle();

    expect(find.text(t.crFixErrors), findsWidgets); // snackbar
    expect(find.text(t.valRequired), findsWidgets); // أخطاء الحقول
    expect(repo.lastSubmit, isNull);
  });

  testWidgets('السجل المعتمد بيقفل النموذج ويخفي زرار الإرسال', (tester) async {
    await _pump(
      tester,
      const CommercialRegister(
        status: CommercialRegisterStatus.approved,
        canSubmit: false,
        companyName: 'ذ.م.م مزايدة',
        hasRegisterDocument: true,
        hasTaxCardDocument: true,
      ),
    );
    final t = await AppLocalizations.delegate.load(const Locale('ar'));

    expect(find.text(t.crStatusApproved), findsOneWidget);
    expect(find.text(t.crSubmit), findsNothing);
    expect(find.text(t.crResubmit), findsNothing);
  });

  testWidgets('النموذج المكتمل بيتبعت والأرقام العربية بتتحوّل', (tester) async {
    final repo = await _pump(
      tester,
      const CommercialRegister(
        status: CommercialRegisterStatus.rejected,
        companyName: 'ذ.م.م مزايدة للتجارة',
        activityType: 'تجارة السيارات',
        // النسخ محفوظة — فالمستندات مش مطلوبة تاني.
        hasRegisterDocument: true,
        hasTaxCardDocument: true,
      ),
    );
    final t = await AppLocalizations.delegate.load(const Locale('ar'));

    await tester.enterText(
      find.widgetWithText(TextField, t.crRegisterNumberHint),
      '١٦/٠٠-١٢٣٤٥٦٧ B ١٩',
    );
    await tester.enterText(
      find.widgetWithText(TextField, t.crTaxNumberHint),
      '٠٠٠١١٦٠٠١٢٣٤٥٦٧',
    );
    await tester.pumpAndSettle();

    // تاريخ الإصدار من الـ date picker.
    final material = await GlobalMaterialLocalizations.delegate.load(
      const Locale('ar'),
    );
    final dateField = find.widgetWithText(TextField, t.crStartDateHint);
    await tester.ensureVisible(dateField);
    await tester.pumpAndSettle();
    await tester.tap(dateField);
    await tester.pumpAndSettle();
    await tester.tap(find.text(material.okButtonLabel));
    await tester.pumpAndSettle();

    await tester.tap(find.text(t.crResubmit));
    await tester.pumpAndSettle();

    expect(repo.lastSubmit, isNotNull);
    expect(repo.lastSubmit!.registerNumber, '16/00-1234567 B 19');
    expect(repo.lastSubmit!.taxNumber, '000116001234567');
  });
}
