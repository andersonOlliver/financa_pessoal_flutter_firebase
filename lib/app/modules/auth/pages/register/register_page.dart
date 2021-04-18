import 'package:financa_pessoal/app/core/component/password_field.dart';
import 'package:financa_pessoal/app/core/util/theme.dart';
import 'package:financa_pessoal/app/modules/auth/pages/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends ModularState<RegisterPage, RegisterController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: primaryColor),
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraint) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 48.0, top: 24),
                    child: Text(
                      'Cadastre-se',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextFormField(
                      // onChanged: controller.setEmail,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Nome',
                          hintText: 'Informe o nome'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Informe um e-mail válido';
                        }
                        return null;
                      },
                      // onFieldSubmitted: (value) {
                      //   print(value);
                      //   // passwordFocusNode.requestFocus();
                      // },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextFormField(
                      // onChanged: controller.setEmail,
                      keyboardType: TextInputType.emailAddress,
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
                      // onFieldSubmitted: (value) {
                      //   print(value);
                      //   // passwordFocusNode.requestFocus();
                      // },
                    ),
                  ),
                  PasswordField(
                    labelText: 'Senha',
                    hintText: 'Informe uma senha',
                    textInputAction: TextInputAction.next,
                    // focusNode: passwordFocusNode,
                    // onChanged: controller.setPassword,
                    // onFieldSubmitted: (value) => _loginSubmit(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Informe uma senha válida';
                      }
                      return null;
                    },
                  ),
                  PasswordField(
                    labelText: 'Repita a senha',
                    hintText: 'Informe novamente a senha',
                    textInputAction: TextInputAction.done,
                    // focusNode: passwordFocusNode,
                    // onChanged: controller.setPassword,
                    // // onFieldSubmitted: (value) => _loginSubmit(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Informe uma senha válida';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 40,
                      child: Observer(
                        builder: (_) {
                          return ElevatedButton(
                              onPressed: _registerSubmit,
                              child: Text('Cadastrar'));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _registerSubmit() {
    if (_formKey.currentState!.validate()) {
      // controller.login();
    } else {
      // controller.invalidate();
    }
  }
}
