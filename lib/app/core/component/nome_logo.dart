import 'package:flutter/material.dart';

class NomeLogo extends StatelessWidget {
  final Color color;

  const NomeLogo({Key? key, this.color = Colors.white}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Minhas",
            style: TextStyle(
              color: color,
              fontSize: 28,
              fontWeight: FontWeight.w300,
              fontFamily: "Roboto",
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "Finanças",
            style: TextStyle(
              color: color,
              fontSize: 36,
              fontWeight: FontWeight.w500,
              fontFamily: "Roboto",
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
