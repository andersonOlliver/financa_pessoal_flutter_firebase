import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:financa_pessoal/app/const.dart';
import 'package:financa_pessoal/app/core/pages/splash_screen_page.dart';
import 'package:financa_pessoal/app/modules/auth/auth_module.dart';
import 'package:financa_pessoal/app/modules/auth/services/auth_service.dart';
import 'package:financa_pessoal/app/modules/category/category_module.dart';
import 'package:financa_pessoal/app/modules/entry/entry_module.dart';
import 'package:financa_pessoal/app/modules/shared/store/auth_store.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => FirebaseAuth.instance),
    Bind((i) => FirebaseFirestore.instance),
    $AuthStore,
    $AuthService
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => SplashScreenPage()),
    ModuleRoute(Routes.login, module: AuthModule()),
    ModuleRoute(Routes.entries, module: EntryModule()),
    ModuleRoute(Routes.categories, module: CategoryModule()),
  ];
}
