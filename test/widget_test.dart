// Basic smoke test for the Mazayada app.

import 'package:flutter_test/flutter_test.dart';

import 'package:mazayada/main.dart';

void main() {
  testWidgets('App builds without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(const MazayadaApp());
    await tester.pump();

    expect(find.byType(MazayadaApp), findsOneWidget);
  });
}
