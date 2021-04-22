import 'package:financa_pessoal/app/core/util/theme.dart';
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
                        .pushNamed('/start/entries/new-fuel', forRoot: true);
                  },
                ),
                ActionButton(
                  svgIcon: 'assets/images/down-arrow-blue.svg',
                  label: 'Outros',
                ),
              ],
            ),
          ),
          SpendingStatusBar(),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(color: Color(0x2bc4c4c4)),
            // height: 50,
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ultimos lançamentos',
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Ver todos',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Card(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            Icons.credit_card,
                            color: primaryColor,
                          ),
                        ),
                        title: Text('Almoço'),
                        subtitle: Text(
                          '13 Agosto',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        trailing: Text(
                          'R\$ 30,00',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: Icon(
                            Icons.credit_card,
                            color: primaryColor,
                          ),
                        ),
                        title: Text('Almoço'),
                        subtitle: Text(
                          '13 Agosto',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        trailing: Text(
                          'R\$ 30,00',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
