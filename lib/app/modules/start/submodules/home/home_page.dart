import 'package:financa_pessoal/app/modules/shared/component/action_button.dart';
import 'package:financa_pessoal/app/modules/shared/component/balance_iten.dart';
import 'package:financa_pessoal/app/modules/shared/component/spending_status_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // title: Text('Counter'),

      //     ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, bottom: 20),
            child: Column(
              children: [
                Text(
                  'Saldo geral',
                  style: TextStyle(fontSize: 12, color: Color(0xFF171536)),
                ),
                Text(
                  'R\$ 1250,00',
                  style: TextStyle(fontSize: 36, color: Color(0xFF171536)),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BalanceIten(
                  balanceType: BalanceType.RECEITA,
                  value: '4500,00',
                ),
                BalanceIten(
                  balanceType: BalanceType.DESPESA,
                  value: '2750,00',
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(
                  svgIcon: 'assets/images/up-arrow.svg',
                  label: 'Receita',
                ),
                ActionButton(
                  svgIcon: 'assets/images/down-arrow.svg',
                  label: 'Despesa',
                ),
                ActionButton(
                  svgIcon: 'assets/images/gas-station.svg',
                  label: 'Abastecer',
                  onTap: () {
                    Modular.to
                        .pushNamed('/start/entries/new-fuel', forRoot: false);
                  },
                ),
                ActionButton(
                  svgIcon: 'assets/images/down-arrow-blue.svg',
                  label: 'Outros',
                ),
              ],
            ),
          ),
          SpendingStatusBar()
        ],
      ),
    );
  }
}
