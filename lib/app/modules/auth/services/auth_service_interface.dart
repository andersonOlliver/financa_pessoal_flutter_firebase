import 'package:financa_pessoal/app/modules/auth/model/login_email.dart';
import 'package:financa_pessoal/app/modules/shared/model/user_model.dart';

abstract class IAuthService {
  Future<UserModel> login(LoginEmail credential);
  // Future<T> register(RegisterModel registerModel);
  Future logout();
}
