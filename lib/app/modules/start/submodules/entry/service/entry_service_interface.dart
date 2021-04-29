import 'package:financa_pessoal/app/modules/start/submodules/entry/entities/dto/new_entry_dto.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/entities/entry_model.dart';

abstract class IEntryService {
  Future add(NewEntry entry);

  Stream<Entry> getById(String id);

  Stream<List<Entry>> list();

  Future remove(Entry entry);
}
