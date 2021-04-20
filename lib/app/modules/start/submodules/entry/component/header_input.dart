import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:financa_pessoal/app/core/util/theme.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/model/entry_type_enum.dart';
import 'package:flutter/material.dart';

class HeaderInput extends StatelessWidget {
  final EntryType type;

  const HeaderInput({Key? key, required this.type}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      decoration: BoxDecoration(
          color: type == EntryType.EXPENSE
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
              cursorColor: Colors.white,
              autofocus: true,
              onChanged: (value) {
                print(value);
                // controller.setValue(value);
              },
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
