import 'package:financa_pessoal/app/modules/start/pages/profile_page.dart';
import 'package:financa_pessoal/app/modules/start/start_page.dart';
import 'package:financa_pessoal/app/modules/start/start_store.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/entry_module.dart';
import 'package:financa_pessoal/app/modules/start/submodules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StartModule extends Module {
  @override
  final List<Bind> binds = [$StartController];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => StartPage(),
        children: [
          ModuleRoute(
            'home',
            module: HomeModule(),
            transition: TransitionType.fadeIn,
          ),
          ModuleRoute(
            'entries',
            module: EntryModule(),
            transition: TransitionType.fadeIn,
          ),
          ChildRoute('profile', child: (_, __) => ProfilePage())
        ]),
  ];
}
