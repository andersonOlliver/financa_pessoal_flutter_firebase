import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:financa_pessoal/app/core/util/theme.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/component/fuel_type_switch.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/component/header_input.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/model/entry_type_enum.dart';
import 'package:flutter/material.dart';

class NewFuelPage extends StatefulWidget {
  @override
  _NewFuelState createState() => _NewFuelState();
}

class _NewFuelState extends State<NewFuelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Novo abastecimento',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        backgroundColor: backgroundSecondaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            HeaderInput(
              type: EntryType.EXPENSE,
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  FuelTypeSwitch(
                    onChanged: (type) {
                      print(type);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
