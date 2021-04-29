import 'package:flutter/material.dart';

import 'package:financa_pessoal/app/core/util/theme.dart';

typedef OnSelectColor = void Function(int color);

class SelectColor extends StatelessWidget {
  final OnSelectColor onSelect;

  SelectColor({
    Key? key,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderOnForeground: true,
      // color: Colors.grey[50],
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
          child: buildColors(context),
        ),
      ),
    );
  }

  Widget buildColors(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back),
                  color: primaryColor,
                ),
                Text(
                  'Selecione uma cor',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            height: (MediaQuery.of(context).size.height / 2) - 97,
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              mainAxisSpacing: 30,
              crossAxisSpacing: 30,
              children: [
                _itemColor(context, Colors.yellow[300]),
                _itemColor(context, Colors.redAccent[400]),
                _itemColor(context, Colors.blue[800]),
                _itemColor(context, Colors.green[400]),
                _itemColor(context, Colors.yellow[400]),
                _itemColor(context, Colors.yellow[600]),
                _itemColor(context, Colors.yellow[800]),
                _itemColor(context, Colors.yellow[900]),
                _itemColor(context, Colors.red[400]),
                _itemColor(context, Colors.red[600]),
                _itemColor(context, Colors.red[800]),
                _itemColor(context, Colors.red[900]),
                _itemColor(context, Colors.redAccent[100]),
                _itemColor(context, Colors.redAccent[200]),
                _itemColor(context, Colors.redAccent[400]),
                _itemColor(context, Colors.redAccent[700]),
                _itemColor(context, Color(0xff828282)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemColor(BuildContext context, Color? color) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        this.onSelect(color!.value);
      },
      child: CircleAvatar(
        backgroundColor: color,
      ),
    );
  }
}
