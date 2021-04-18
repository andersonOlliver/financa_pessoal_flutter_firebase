import 'package:financa_pessoal/app/core/component/nome_logo.dart';
import 'package:financa_pessoal/app/core/util/const.dart';
import 'package:financa_pessoal/app/core/util/theme.dart';
import 'package:financa_pessoal/app/modules/auth/pages/login/login_controller.dart';
import 'package:financa_pessoal/app/modules/auth/pages/login/social_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = "LoginPage"}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ModularState<LoginPage, LoginController> {
  final _formKey = GlobalKey<FormState>();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _formKey.currentState!.dispose();
    passwordFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Form(
                key: _formKey,
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
                      child: TextFormField(
                        onChanged: controller.setEmail,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'E-mail',
                            hintText: 'Informe o e-mail'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Informe um e-mail válido';
                          }
                          return null;
                        },
                        onFieldSubmitted: (value) {
                          print(value);
                          passwordFocusNode.requestFocus();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: TextFormField(
                        focusNode: passwordFocusNode,
                        onChanged: controller.setPassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Senha',
                            hintText: 'Informe uma senha'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Informe uma senha válida';
                          }
                          return null;
                        },
                        onFieldSubmitted: (value) => _loginSubmit(),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 40,
                      child: Observer(
                        builder: (_) {
                          return ElevatedButton(
                              onPressed: _loginSubmit,
                              child: controller.invalidCredentials
                                  ? Text('Tentar novamente')
                                  : Text('Entre'));
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 40,
                      child: TextButton(
                        onPressed: () {
                          Modular.to.pushNamed(Routes.register);
                        },
                        child: Text('Cadastre-se'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _loginSubmit() {
    if (_formKey.currentState!.validate()) {
      controller.login();
    } else {
      controller.invalidate();
    }
  }
}
