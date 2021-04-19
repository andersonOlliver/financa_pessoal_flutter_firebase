import 'package:flutter/material.dart';

class SpendingStatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          /// wrap:positioned of "Gastos do mês"
          Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Gastos do mês",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                ),
              ),
            ),
          ),

          /// wrap:positioned of "70%"
          Positioned.fill(
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                "70%",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                ),
              ),
            ),
          ),

          /// wrap:positioned of "Rectangle 4"
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                child: Container(
                  width: 226,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(
                      0xff2d9cdb,
                    ),
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                ),
                width: double.infinity,
                height: 10,
                padding: EdgeInsets.only(
                  right: 103,
                ),
                decoration: BoxDecoration(
                  color: Color(
                    0x2bc4c4c4,
                  ),
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
              ),
            ),
          ),

          /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
          Container(),
        ],
      ),
      // width: MediaQuery.of(context).size.width,
      height: 35,
      padding: EdgeInsets.symmetric(horizontal: 30),
    );
  }
}
