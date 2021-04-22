import 'package:flutter/material.dart';

class PaymentSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onClick(context),
      child: Container(
        height: 50,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Color(0xcc4c4c4),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Color(0xff4f4f4f),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pagar com',
              style: TextStyle(
                color: Color(0xff4f4f4f),
              ),
            ),
            Icon(Icons.arrow_drop_down)
          ],
        ),
      ),
    );
  }

  _onClick(context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 500),
      // transitionBuilder: (context, animation, secondaryAnimation, child) {
      //   return ScaleTransition(
      //     alignment: Alignment.bottomCenter,
      //     scale: animation,
      //     child: Opacity(
      //       opacity: animation.value,
      //       child: child,
      //     ),
      //   );
      // },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        var fadeTween = CurveTween(curve: Curves.fastOutSlowIn);
        var fadeAnimation = fadeTween.animate(animation);
        return FadeTransition(
          opacity: fadeAnimation,
          child: child,
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 10,
            height: MediaQuery.of(context).size.height - 10,
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Exit'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
