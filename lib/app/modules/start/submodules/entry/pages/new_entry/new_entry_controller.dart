import 'package:asuka/snackbars/asuka_snack_bar.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/model/new_entry_dto.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/service/entry_service_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:asuka/asuka.dart' as asuka;

part 'new_entry_controller.g.dart';

@Injectable()
class NewEntryController = _NewEntryControllerBase with _$NewEntryController;

abstract class _NewEntryControllerBase with Store {
  final RegExp _regex = RegExp(r'[^0-9]');
  final IEntryService _service;
  @observable
  double value = 0;
  @observable
  String title = '';
  @observable
  String category = '';

  _NewEntryControllerBase(this._service);

  @action
  void setValue(String v) {
    value = _getDecimalValue(v);
    print(value);
  }

  @action
  void setCategory(String v) => category = v;

  @action
  void setTitle(String v) => title = v;

  @computed
  NewEntry get newEntry => NewEntry.create(
        value: value,
        category: category,
        title: title,
      );

  @action
  void save() {
    print(newEntry.toJson());
    _service.add(newEntry).then((value) {
      print('Register success');
      AsukaSnackbar.success('Adicionado com sucesso!').show();
      Modular.to.pop();
    }).catchError((failure) {
      print(failure);
      AsukaSnackbar.warning(failure.message);
    });
  }

  double _getDecimalValue(String value) {
    if (value.isEmpty) return 0;

    var number = value.replaceAll(_regex, '');
    var length = number.length;
    var decimalValue =
        '${number.substring(0, length - 2)}.${number.substring(length - 2)}';

    return double.parse(decimalValue);
  }
}
