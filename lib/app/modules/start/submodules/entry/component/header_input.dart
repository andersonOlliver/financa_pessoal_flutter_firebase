import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:financa_pessoal/app/core/util/theme.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/entities/enum/entry_type_enum.dart';
import 'package:flutter/material.dart';

typedef OnChange = void Function(String value);

class HeaderInput extends StatefulWidget {
  final EntryType type;
  final OnChange onChange;
  final bool hasAutoFocus;

  const HeaderInput({
    Key? key,
    required this.type,
    required this.onChange,
    required this.hasAutoFocus,
  }) : super(key: key);

  @override
  _HeaderInputState createState() => _HeaderInputState();
}

class _HeaderInputState extends State<HeaderInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      decoration: BoxDecoration(
          color: widget.type == EntryType.EXPENSE
              ? backgroundSecondaryColor
              : primaryColor),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Text(
              'Valor:',
              style: whiteBigText,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: TextFormField(
              textAlign: TextAlign.end,
              textInputAction: TextInputAction.next,
              cursorColor: Colors.white,
              autofocus: this.widget.hasAutoFocus,
              onChanged: this.widget.onChange,
              inputFormatters: [
                CurrencyTextInputFormatter(
                  locale: 'ptBr',
                  symbol: 'R\$',
                )
              ],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'R\$ 00,00',
                hintStyle: whiteBigText.copyWith(fontWeight: FontWeight.bold),
              ),
              style: whiteBigText.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
