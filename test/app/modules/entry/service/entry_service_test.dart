import 'package:flutter_test/flutter_test.dart';
import 'package:financa_pessoal/app/modules/entry/service/entry_service.dart';
 
void main() {
  late EntryService service;

  setUpAll(() {
    service = EntryService();
  });
}