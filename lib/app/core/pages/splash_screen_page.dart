import 'package:financa_pessoal/app/modules/shared/store/auth_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../const.dart';

class SplashScreenPage extends StatelessWidget {
  SplashScreenPage() {
    Modular.get<AuthStore>().checkLogin().then((v) async {
      return Future.delayed(
        Duration(seconds: 2),
        () {
          var route = v ? Routes.entries : Routes.login;
          return Modular.to.pushReplacementNamed(route);
          // Modular.to.pushNamedAndRemoveUntil(route, (_) => false);
        },
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
