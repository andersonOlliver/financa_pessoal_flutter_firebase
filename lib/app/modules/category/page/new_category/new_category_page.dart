import 'package:financa_pessoal/app/modules/category/page/new_category/new_category_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NewCategoryPage extends StatefulWidget {
  @override
  _NewCategoryState createState() => _NewCategoryState();
}

class _NewCategoryState
    extends ModularState<NewCategoryPage, NewCategoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova categoria'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _titleField(),
              _colorField(),
              _addButton(),
              // _removeButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _colorField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: InkWell(
        onTap: controller.onClickModalSheet,
        child: Container(
          height: 50,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Color(0xcc4c4c4),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Color(0xff4f4f4f), width: 1),
          ),
          child: Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Cor', style: TextStyle(color: Color(0xff4f4f4f))),
                Icon(Icons.circle, color: controller.colorParsed)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _titleField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextFormField(
        onChanged: controller.setTitle,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Nome da categoria',
        ),
        onFieldSubmitted: (value) => controller.onClickModalSheet(),
      ),
    );
  }

  Widget _addButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: controller.save,
          child: Text('Adicionar'),
        ),
      ),
    );
  }

  Widget _removeButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        width: double.infinity,
        height: 50,
        child: TextButton(onPressed: controller.save, child: Text('Excluir')),
      ),
    );
  }
}
