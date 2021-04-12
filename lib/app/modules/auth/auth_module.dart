import 'package:financa_pessoal/app/modules/auth/pages/login/login_page.dart';
import 'package:financa_pessoal/app/modules/auth/pages/register/register_store.dart';
import 'package:financa_pessoal/app/modules/auth/services/auth_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/login/login_controller.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterStore()),
    // $AuthService,
    $LoginController
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => LoginPage()),
  ];
}
