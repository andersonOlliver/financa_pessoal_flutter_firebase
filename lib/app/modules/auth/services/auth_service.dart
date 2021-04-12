import 'package:financa_pessoal/app/modules/auth/model/login_email.dart';
import 'package:financa_pessoal/app/modules/auth/services/auth_service_interface.dart';
import 'package:financa_pessoal/app/modules/shared/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../extensions/firebase_auth_extension.dart';

part 'auth_service.g.dart';

@Injectable()
class AuthService implements IAuthService {
  final FirebaseAuth auth;

  AuthService(this.auth);
  @override
  Future<UserModel> login(LoginEmail credential) async {
    try {
      var result = await auth.signInEmailAndPassword(credential);
      print(result);
      var user = result.user;
      return UserModel.create(
        userId: user!.uid,
        email: user.email!,
        username: user.displayName,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      throw Exception('Erro ao autenticar o usuário');
    }
  }

  bool get isLogged => auth.currentUser != null;

  Future<UserModel?> currentUser() {
    var user = auth.currentUser;

    return Future<UserModel?>.value(user != null
        ? UserModel.create(
            userId: user.uid,
            email: user.email!,
            username: user.displayName,
          )
        : null);
  }

  Future logout() {
    return auth.signOut();
  }
}
