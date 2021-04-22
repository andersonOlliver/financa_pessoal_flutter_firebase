import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:financa_pessoal/app/core/util/theme.dart';
import 'package:financa_pessoal/app/modules/category/component/category_select.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/component/fuel_type_switch.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/component/header_input.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/component/payment_select.dart';
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
                  SizedBox(height: 16),
                  PaymentSelect(),
                  SizedBox(height: 16),
                  CategorySelect(),
                  SizedBox(height: 16),
                  TextField(
                    // onChanged: controller.setTitle,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Litros',
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    // onChanged: controller.setTitle,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Valor por litro',
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    // onChanged: controller.setTitle,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Quilometragem',
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    // onChanged: controller.setTitle,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Data',
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          if (states.contains(MaterialState.pressed))
                            return secondaryColor.withOpacity(.9);
                          return secondaryColor;
                        }),
                      ),
                      onPressed: () {},
                      child: Text('Adicionar'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
