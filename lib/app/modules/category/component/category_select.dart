import 'package:flutter/material.dart';

class CategorySelect extends StatelessWidget {
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
              'Transporte',
              style: TextStyle(
                color: Color(0xff4f4f4f),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.yellow[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_drop_down),
              ],
            )
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
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        var fadeTween = CurveTween(curve: Curves.fastOutSlowIn);
        var fadeAnimation = fadeTween.animate(animation);
        return FadeTransition(
          opacity: fadeAnimation,
          child: child,
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Categorias'),
          ),
          body: ListView(
            children: [
              ListTile(
                leading: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.yellow[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                title: Text('Alimenta????o'),
              ),
              ListTile(
                leading: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                title: Text('Contas fixas parceladas'),
              ),
              ListTile(
                leading: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.red[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                title: Text('Contas parceladas'),
              ),
              ListTile(
                leading: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.green[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                title: Text('Investimento'),
              ),
              ListTile(
                leading: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                title: Text('Lazer'),
              ),
            ],
          ),
        );
      },
    );
  }
}
