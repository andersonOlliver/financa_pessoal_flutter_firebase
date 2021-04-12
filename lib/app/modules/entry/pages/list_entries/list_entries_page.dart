import 'package:financa_pessoal/app/modules/entry/model/entry_model.dart';
import 'package:financa_pessoal/app/modules/entry/pages/list_entries/list_entries_controller.dart';
import 'package:financa_pessoal/app/modules/shared/component/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListEntriesPage extends StatefulWidget {
  final String title;

  const ListEntriesPage({Key? key, this.title = "Meus lançamentos"})
      : super(key: key);

  @override
  ListEntriesPageState createState() => ListEntriesPageState();
}

class ListEntriesPageState
    extends ModularState<ListEntriesPage, EntryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: SideMenu(),
      body: Observer(
        builder: (_) {
          if (controller.entriesList?.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (controller.entriesList!.hasError) {
            return Center(
              child: RaisedButton(
                onPressed: controller.getList,
                child: Text('Ocorreu um erro'),
              ),
            );
          } else if ((controller.entriesList!.data as List).isEmpty) {
            return Center(child: Text("Nenhum lançamento encontrado!"));
          } else {
            List<Entry> list = controller.entriesList?.data;
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (_, index) {
                var model = list[index];
                return ListTile(
                  onTap: () {
                    print('Tapped $model');
                  },
                  title: Text(model.value.toString()),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed('new-entry');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
