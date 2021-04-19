import 'package:financa_pessoal/app/modules/start/submodules/entry/model/entry_model.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/service/entry_service_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'list_entries_controller.g.dart';

@Injectable()
class EntryController = _EntryControllerBase with _$EntryController;

abstract class _EntryControllerBase with Store {
  final IEntryService _service;

  @observable
  ObservableStream<List<Entry>>? entriesList;

  _EntryControllerBase(this._service) {
    getList();
  }

  @action
  void getList() {
    entriesList = _service.list().asObservable();
  }
}
