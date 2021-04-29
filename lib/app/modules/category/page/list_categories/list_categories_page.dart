import 'package:financa_pessoal/app/modules/category/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import 'categories_controller.dart';

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
          actions: [IconButton(onPressed: _newCategory, icon: Icon(Icons.add))],
        ),
        body: ScopedBuilder<CategoriesController, Exception, List<Category>>(
          store: controller,
          onState: (context, state) => _list(context, state),
          onError: (context, error) => Text(error.toString()),
          onLoading: (context) => _loading(),
        ));
  }

  _list(BuildContext context, List<Category> state) {
    return ListView.builder(
      itemCount: state.length,
      itemBuilder: (_, index) {
        var model = state[index];
        return ListTile(
          onTap: () {
            print('Tapped $model');
          },
          title: Text(model.title),
          leading: CircleAvatar(
            backgroundColor: Color(model.color),
          ),
        );
      },
    );
  }

  _newCategory() {
    Modular.to.pushNamed('/categories/new');
  }

  _loading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
