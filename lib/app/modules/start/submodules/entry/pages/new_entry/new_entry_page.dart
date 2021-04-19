import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'new_entry_controller.dart';

class NewEntryPage extends StatefulWidget {
  final String title;

  const NewEntryPage({Key? key, this.title = "Novo Lançamento"})
      : super(key: key);

  @override
  NewEntryPageState createState() => NewEntryPageState();
}

class NewEntryPageState extends ModularState<NewEntryPage, NewEntryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                print(value);
                controller.setValue(value);
              },
              inputFormatters: [
                CurrencyTextInputFormatter(
                  locale: 'ptBr',
                  symbol: '',
                )
              ],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Valor'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: controller.setTitle,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Titulo',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: controller.setCategory,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Categoria',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: controller.save,
                child: Text('Adicionar'),
                style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.5);
                  }
                  return null;
                })),
              ),
            ),
          )
        ],
      ),
    );
  }
}
