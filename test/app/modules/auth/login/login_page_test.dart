import 'package:financa_pessoal/app/modules/auth/pages/login/login_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';

main() {
  group('LoginPage', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(LoginPage(title: 'T')));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}
