import 'package:asuka/snackbars/asuka_snack_bar.dart';
import 'package:financa_pessoal/app/modules/category/component/select_color.dart';
import 'package:financa_pessoal/app/modules/category/model/new_category_dto.dart';
import 'package:financa_pessoal/app/modules/category/service/category_service_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:asuka/asuka.dart' as asuka;

part 'new_category_controller.g.dart';

@Injectable()
class NewCategoryController = _NewCategoryControllerBase
    with _$NewCategoryController;

abstract class _NewCategoryControllerBase with Store {
  final ICategoryService _service;

  @observable
  String title = '';

  @observable
  int color = Colors.greenAccent.value;

  _NewCategoryControllerBase(this._service);

  @action
  void setTitle(String v) => this.title = v;

  @action
  void setColor(int v) => this.color = v;

  @computed
  Color get colorParsed => Color(color);

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

  void onClickModalSheet() {
    asuka.showBottomSheet(
      (_) => SelectColor(onSelect: this.setColor),
      backgroundColor: Colors.red,
      clipBehavior: Clip.antiAlias,
    );
  }
}
