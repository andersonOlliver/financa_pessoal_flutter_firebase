import 'package:financa_pessoal/app/core/util/const.dart';
import 'package:financa_pessoal/app/modules/auth/model/login_email.dart';
import 'package:financa_pessoal/app/modules/auth/services/auth_service_interface.dart';
import 'package:financa_pessoal/app/modules/shared/model/user_model.dart';
import 'package:financa_pessoal/app/modules/shared/store/auth_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:asuka/asuka.dart' as asuka;

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final IAuthService _auth;
  final AuthStore _authStore;

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool isClicked = false;

  @observable
  bool invalidCredentials = false;

  _LoginControllerBase(this._auth, this._authStore);

  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;

  @computed
  LoginEmail get credential => LoginEmail.fromEmailAndPassword(email, password);

  @action
  login() async {
    print('Login');
    if (credential.isValid) {
// loading.show();
      await Future.delayed(Duration(seconds: 1));
      _auth.login(credential).then((UserModel user) async {
        print(user);
        _authStore.setUser(user);
        // await loading.hide();
        Modular.to.pushReplacementNamed(Routes.entries);
      }).catchError((failure) {
        print(failure);
        this.invalidate();
        asuka.showSnackBar(SnackBar(content: Text(failure.message)));
      });
      // .whenComplete(() => loading.hide());
    }
  }

  @action
  invalidate() {
    this.invalidCredentials = true;
  }
}
