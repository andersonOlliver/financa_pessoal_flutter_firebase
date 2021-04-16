import 'package:financa_pessoal/app/core/component/nome_logo.dart';
import 'package:financa_pessoal/app/core/util/theme.dart';
import 'package:financa_pessoal/app/modules/auth/pages/login/login_controller.dart';
import 'package:financa_pessoal/app/modules/auth/pages/login/social_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = "LoginPage"}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  NomeLogo(
                    color: primaryColor,
                  ),
                  SocialLogin(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 30),
                    child: Text(
                      'ou',
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      onChanged: controller.setEmail,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'E-mail',
                          hintText: 'Informe o e-mail'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: TextField(
                      onChanged: controller.setPassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Senha',
                          hintText: 'Informe uma senha'),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 40,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.login();
                      },
                      child: Text('Entre'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 40,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Cadastre-se'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
