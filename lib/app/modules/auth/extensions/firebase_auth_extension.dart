import 'package:financa_pessoal/app/modules/auth/model/login_email.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

extension FirebaseAuthExtension on FirebaseAuth {
  Future<UserCredential> signInEmailAndPassword(LoginEmail credential) async {
    var auth = Modular.get<FirebaseAuth>();
    return await auth.signInWithEmailAndPassword(
      email: credential.email,
      password: credential.password,
    );
  }
}
