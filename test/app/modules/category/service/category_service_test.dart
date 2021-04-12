import 'package:flutter_test/flutter_test.dart';
import 'package:financa_pessoal/app/modules/category/service/category_service.dart';
 
void main() {
  late CategoryService service;

  setUpAll(() {
    service = CategoryService();
  });
}