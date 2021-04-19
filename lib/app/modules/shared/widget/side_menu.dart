import 'package:financa_pessoal/app/core/util/const.dart';
import 'package:financa_pessoal/app/modules/shared/store/auth_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var store = Modular.get<AuthStore>();

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Observer(
          builder: (_) => UserAccountsDrawerHeader(
            accountName: Text(store.currentUser.username ?? 'Usuário'),
            accountEmail: Text(store.currentUser.email),
            // currentAccountPicture: CircleAvatar(
            //   backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
            //       ? Colors.blue
            //       : Colors.white,
            //   child: Text(
            //     store.currentUser.username?.substring(0, 1).toUpperCase() ??
            //         store.currentUser.email.substring(0, 1).toUpperCase(),
            //     style: TextStyle(fontSize: 40),
            //   ),
            // ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ),
        Observer(builder: (_) {
          return ListTile(
            title: Text('Categorias'),
            onTap: () async {
              Modular.to.pushNamed(Routes.categories);
            },
          );
        }),
        ListTile(
          title: Text('Cartões'),
          onTap: null,
        ),
        Observer(builder: (_) {
          return ListTile(
            title: Text('Sair'),
            onTap: () async {
              await store.logout();
            },
          );
        }),
      ],
    );
  }
}
