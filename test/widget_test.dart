// اختبار دخان: التطبيق بيتبني من غير ما يكرّش.
//
// الاختبار ده كان بيفشل من قبل التعديلات دي لسببين:
//  1) `MazayadaApp` بيقرا `LocaleCubit` و`ConnectivityCubit` من `getIt` وهو
//     بيتبني، و`configureDependencies()` مكانش بيتنادى — فكان بيقع على
//     «type LocaleCubit is not registered» قبل ما يبني أي حاجة.
//  2) شاشة الـ splash بتفتح `Future.delayed` وبتقرا التخزين الآمن، وده
//     بيسيب Timer معلّق وplugin مش موجود في بيئة الاختبار.
//
// بنعالج الاتنين: بنسجّل الـ DI، بنزوّر قناة التخزين الآمن، وبنفضّي
// المؤقّتات قبل ما الاختبار يخلص.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mazayada/core/di/injection.dart';
import 'package:mazayada/main.dart';

/// قناة flutter_secure_storage — مالهاش تنفيذ في بيئة الاختبار.
const _secureStorageChannel = MethodChannel(
  'plugins.it_nomads.com/flutter_secure_storage',
);

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    // «مفيش جلسة محفوظة» — قراءة التوكن بترجّع null، والقراءات التانية فاضية.
    binding.defaultBinaryMessenger.setMockMethodCallHandler(
      _secureStorageChannel,
      (call) async => call.method == 'readAll' ? <String, String>{} : null,
    );
    await configureDependencies();
  });

  tearDownAll(() {
    binding.defaultBinaryMessenger.setMockMethodCallHandler(
      _secureStorageChannel,
      null,
    );
  });

  testWidgets('App builds without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(const MazayadaApp());
    await tester.pump();

    expect(find.byType(MazayadaApp), findsOneWidget);

    // نفكّ الشجرة الأول (بيوقّف الـ tickers) وبعدين نمرّر الوقت عشان
    // مؤقّت الـ splash يخلص، فمايفضلش Timer معلّق آخر الاختبار.
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(seconds: 3));
  });
}
