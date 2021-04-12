import 'package:financa_pessoal/app/modules/entry/model/entry_model.dart';
import 'package:financa_pessoal/app/modules/entry/model/new_entry_dto.dart';

abstract class IEntryService {
  Future add(NewEntry entry);

  Stream<Entry> getById(String id);

  Stream<List<Entry>> list();

  Future remove(Entry entry);
}
