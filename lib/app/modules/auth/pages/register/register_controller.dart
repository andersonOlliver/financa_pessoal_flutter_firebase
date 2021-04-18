import 'package:financa_pessoal/app/modules/auth/services/auth_service_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'register_controller.g.dart';

@Injectable()
class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  final IAuthService _auth;
  @observable
  int value = 0;

  _RegisterControllerBase(this._auth);

  @action
  void increment() {
    value++;
  }
}
