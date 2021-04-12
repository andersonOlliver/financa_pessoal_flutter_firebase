import 'package:financa_pessoal/app/modules/auth/services/auth_service.dart';
import 'package:financa_pessoal/app/modules/shared/model/user_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

@Injectable()
class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  final AuthService _authService;
  @observable
  UserModel currentUser = UserModel.empty();

  _AuthStoreBase(this._authService);
  @action
  void setUser(UserModel user) {
    currentUser = user;
  }

  @action
  Future<void> logout() async {
    // var auth = Modular.get<IFirebaseAuthService>();
    await _authService.logout();
    this.setUser(UserModel.empty());
    Modular.to.pushReplacementNamed(Modular.initialRoute);
  }

  Future<bool> checkLogin() async {
    return _authService
        .currentUser()
        .then((UserModel? user) => setUser(user ?? UserModel.empty()))
        .then((value) => currentUser.isEmpty);
  }
}
