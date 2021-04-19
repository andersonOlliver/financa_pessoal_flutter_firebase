import 'package:flutter/material.dart';

enum BalanceType { RECEITA, DESPESA }

class BalanceIten extends StatelessWidget {
  final BalanceType balanceType;
  final String value;

  const BalanceIten({
    Key? key,
    required this.balanceType,
    required this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width / 3,
      // height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            balanceType == BalanceType.RECEITA ? "Receitas" : 'Despesas',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w300,
              fontFamily: "Roboto",
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "R\$",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                ),
              ),
              Text(
                this.value,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                ),
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: _gradient(),
      ),
    );
  }

  _gradient() {
    if (this.balanceType == BalanceType.RECEITA) {
      return LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff4c47b5),
          Color(0xff514CC2),
        ],
      );
    }
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff1F9EEC),
        Color(0xff20A7FA),
      ],
    );
  }
}
