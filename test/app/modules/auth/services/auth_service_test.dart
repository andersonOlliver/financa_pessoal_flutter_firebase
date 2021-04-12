import 'package:flutter_test/flutter_test.dart';
import 'package:financa_pessoal/app/modules/auth/services/auth_service.dart';
 
void main() {
  late AuthService service;

  setUpAll(() {
    service = AuthService();
  });
}