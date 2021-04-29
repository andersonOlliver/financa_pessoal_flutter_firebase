import 'package:financa_pessoal/app/core/util/theme.dart';
import 'package:financa_pessoal/app/modules/category/component/category_select.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/component/fuel_type_switch.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/component/header_input.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/component/payment_select.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/entities/enum/entry_type_enum.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/pages/new_fuel/new_fuel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NewFuelPage extends StatefulWidget {
  @override
  _NewFuelState createState() => _NewFuelState();
}

class _NewFuelState extends ModularState<NewFuelPage, NewFuelController> {
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
            Observer(
              builder: (_) => HeaderInput(
                type: EntryType.EXPENSE,
                onChange: controller.setValue,
                hasAutoFocus: controller.hasAutoFocus,
              ),
            ),
            Observer(builder: (_) {
              return Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    FuelTypeSwitch(
                      onChanged: controller.setType,
                    ),
                    SizedBox(height: 16),
                    PaymentSelect(),
                    SizedBox(height: 16),
                    // CategorySelect(),
                    // SizedBox(height: 16),
                    if (!controller.isAdvanced)
                      ..._simplifiedFields()
                    else
                      ..._completeFields(),
                    SizedBox(height: 16),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (states) {
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
              );
            })
          ],
        ),
      ),
    );
  }

  _simplifiedFields() {
    return [
      _literField(),
      SizedBox(height: 12),
      _kilometerField(),
      Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () => this.controller.setAdvanced(!controller.isAdvanced),
          child: Text('Avançado'),
        ),
      )
    ];
  }

  _completeFields() {
    return [
      _literField(),
      SizedBox(height: 16),
      TextField(
        // onChanged: controller.setTitle,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Valor por litro',
        ),
      ),
      SizedBox(height: 16),
      SizedBox(height: 16),
      TextField(
        // onChanged: controller.setTitle,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Data',
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () => this.controller.setAdvanced(!controller.isAdvanced),
          child: Text('Simplificado'),
        ),
      )
    ];
  }

  _literField() {
    return TextField(
      onChanged: controller.setLiter,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Litros',
      ),
    );
  }

  _kilometerField() {
    return TextField(
      // onChanged: controller.set,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Quilometragem',
      ),
    );
  }
}
