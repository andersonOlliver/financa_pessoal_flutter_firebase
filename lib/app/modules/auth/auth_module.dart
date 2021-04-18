import 'package:financa_pessoal/app/core/util/const.dart';
import 'package:financa_pessoal/app/modules/auth/pages/login/login_page.dart';
import 'package:financa_pessoal/app/modules/auth/pages/register/register_page.dart';
import 'package:financa_pessoal/app/modules/auth/pages/register/register_controller.dart';
import 'package:financa_pessoal/app/modules/auth/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/login/login_controller.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    $RegisterController,
    // $AuthService,
    $LoginController
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => LoginPage()),
    ChildRoute(Routes.loginInternal, child: (_, args) => LoginPage()),
    ChildRoute(Routes.registerInternal, child: (_, args) => RegisterPage()),
  ];
}
