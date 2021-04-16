import 'package:financa_pessoal/app/core/component/nome_logo.dart';
import 'package:financa_pessoal/app/modules/shared/store/auth_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../util/const.dart';

class SplashScreenPage extends StatelessWidget {
  SplashScreenPage() {
    Modular.get<AuthStore>().checkLogin().then((v) async {
      return Future.delayed(
        Duration(seconds: 5),
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
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xff4c47b5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white)
                // backgroundColor: Colors.white,
                ),
            SizedBox(
              height: 28.5,
            ),
            NomeLogo(),
          ],
        ),
      ),
    );
  }
}
