import 'package:financa_pessoal/app/modules/category/page/list_categories/list_categories_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';

main() {
  group('ListCategoriesPage', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      await tester
          .pumpWidget(buildTestableWidget(ListCategoriesPage(title: 'T')));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}
