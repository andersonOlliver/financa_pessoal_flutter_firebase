import 'package:financa_pessoal/app/modules/category/model/category_model.dart';
import 'package:financa_pessoal/app/modules/category/page/categories_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;

class ListCategoriesPage extends StatefulWidget {
  final String title;
  const ListCategoriesPage({Key? key, this.title = "Categorias"})
      : super(key: key);
  @override
  ListCategoriesPageState createState() => ListCategoriesPageState();
}

class ListCategoriesPageState
    extends ModularState<ListCategoriesPage, CategoriesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [IconButton(onPressed: _showDialog, icon: Icon(Icons.add))],
      ),
      body: Observer(
        builder: (_) {
          if (controller.categoriesList?.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (controller.categoriesList!.hasError) {
            return Center(
              child: RaisedButton(
                onPressed: controller.getList,
                child: Text('Ocorreu um erro'),
              ),
            );
          } else if ((controller.categoriesList!.data as List).isEmpty) {
            return Center(child: Text("Nenhuma categoria encontrada!"));
          } else {
            List<Category> list = controller.categoriesList?.data;
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (_, index) {
                var model = list[index];
                return ListTile(
                  onTap: () {
                    print('Tapped $model');
                  },
                  title: Text(model.title),
                  leading: IconButton(
                    icon: Icon(
                      Icons.remove_circle_outline,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      // controller.delete(model);
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  _showDialog() async {
    asuka.showDialog(
      builder: (context) => AlertDialog(
        title: Text('Nova categoria'),
        content: TextFormField(
          onChanged: controller.setTitle,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nome da categoria',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Navigator.pop(context, false);
              // Modular.to.pop()
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              controller.save();
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text('Adicionar'),
          ),
        ],
      ),
    );
  }
}
