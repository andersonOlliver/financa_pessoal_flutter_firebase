import 'package:asuka/asuka.dart';
import 'package:financa_pessoal/app/core/util/const.dart';
import 'package:financa_pessoal/app/modules/auth/pages/login/login_controller.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                onChanged: controller.setEmail,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                    hintText: 'meuemail@email.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                onChanged: controller.setPassword,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                    hintText: 'Informe uma senha'),
              ),
            ),
            FlatButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
                AsukaSnackbar.info('O problema é seu!').show();
              },
              child: Text(
                'Esqueceu a senha',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                onPressed: () {
                  controller.login();
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.all(8.0),
            //   child: SizedBox(
            //     width: 250,
            //     child: Observer(
            //       builder: (_) {
            //         return OutlinedButton(
            //           style: OutlinedButton.styleFrom(
            //             primary: Colors.blue,
            //             padding:
            //                 EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            //             side: BorderSide(
            //               width: 1,
            //               color: Colors.blue,
            //             ),
            //           ),
            //           onPressed: () async {
            //             Modular.to.pushNamed(Routes.register);
            //           },
            //           child: Text('Criar conta'),
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
