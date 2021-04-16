import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            color: Color(0xfff2f2f2),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              radius: 10,
              onTap: () {
                print('Clicou botão google');
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    'assets/images/search.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Material(
            color: Color(0xff2196f3),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                height: 50,
                // decoration: BoxDecoration(
                //   color: Color(0xff2196f3),
                //   borderRadius: BorderRadius.circular(10),
                // ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/images/facebook.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              onTap: () {
                print('Clicou facebook');
              },
            ),
          ),
        ],
      ),
    );
  }
}
