import 'package:asuka/snackbars/asuka_snack_bar.dart';
import 'package:financa_pessoal/app/modules/category/model/category_model.dart';
import 'package:financa_pessoal/app/modules/category/model/new_category_dto.dart';
import 'package:financa_pessoal/app/modules/category/service/category_service_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'categories_controller.g.dart';

@Injectable()
class CategoriesController = _CategoriesControllerBase
    with _$CategoriesController;

abstract class _CategoriesControllerBase with Store {
  final ICategoryService _service;

  @observable
  ObservableStream<List<Category>>? categoriesList;

  @observable
  String title = '';

  @observable
  String color = Colors.greenAccent.value.toString();

  _CategoriesControllerBase(this._service) {
    getList();
  }

  @action
  void getList() {
    categoriesList = _service.list().asObservable();
  }

  @action
  void setTitle(String v) => title = v;

  @action
  void setColor(String v) => color = v;

  @computed
  NewCategory get newCategory => NewCategory.create(
        title: title,
        color: color,
      );

  @action
  void save() {
    print(newCategory.toJson());
    _service.add(newCategory).then((value) {
      print('Register success');
      AsukaSnackbar.success('Adicionado com sucesso!').show();
      Modular.to.pop();
    }).catchError((failure) {
      print(failure);
      AsukaSnackbar.warning(failure.message);
    });
  }
}
