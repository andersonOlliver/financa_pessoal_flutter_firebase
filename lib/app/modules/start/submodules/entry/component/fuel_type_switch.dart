import 'package:financa_pessoal/app/core/util/theme.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/entities/enum/fuel_type_enum.dart';
import 'package:flutter/material.dart';

class FuelTypeSwitch extends StatefulWidget {
  final OnChangeFuelType onChanged;

  const FuelTypeSwitch({Key? key, required this.onChanged}) : super(key: key);
  @override
  _FuelTypeSwitchState createState() => _FuelTypeSwitchState();
}

class _FuelTypeSwitchState extends State<FuelTypeSwitch> {
  FuelType selected = FuelType.ALCOOL;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(.8),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          _itemSwitch('Álcool', this.selected == FuelType.ALCOOL),
          _itemSwitch('Gasolina', this.selected == FuelType.GASOLINA),
        ],
      ),
    );
  }

  _itemSwitch(String title, bool isSelected) {
    return isSelected ? _itemSelected(title) : _itemUnselected(title);
  }

  _itemSelected(String title) {
    return InkWell(
      onTap: _invertSelection,
      child: Container(
        width: (MediaQuery.of(context).size.width - 60) / 2,
        height: double.infinity,
        decoration: BoxDecoration(
          color: backgroundSecondaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            title,
            style: whiteText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  _itemUnselected(String title) {
    return InkWell(
      onTap: _invertSelection,
      child: Container(
        width: (MediaQuery.of(context).size.width - 60) / 2,
        height: double.infinity,
        child: Center(
          child: Text(
            title,
            style: whiteText.copyWith(fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }

  _invertSelection() {
    setState(() {
      this.selected = this.selected == FuelType.ALCOOL
          ? FuelType.GASOLINA
          : FuelType.ALCOOL;
      this.widget.onChanged(this.selected);
    });
  }
}

typedef OnChangeFuelType = void Function(FuelType type);
