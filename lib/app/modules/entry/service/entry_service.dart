import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:financa_pessoal/app/modules/entry/model/entry_model.dart';
import 'package:financa_pessoal/app/modules/entry/model/new_entry_dto.dart';
import 'package:financa_pessoal/app/modules/shared/store/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'entry_service_interface.dart';

part 'entry_service.g.dart';

@Injectable()
class EntryService implements IEntryService {
  final FirebaseFirestore _firestore;
  final AuthStore _store;
  late CollectionReference _entries;

  EntryService(this._firestore, this._store) {
    _entries = _firestore.collection("entries");
  }

  Future add(NewEntry entry) async {
    var entryWithUser = entry.copyWith(userId: _store.currentUser.userId!);
    return await _entries.add(entryWithUser.toJson());
  }

  Stream<Entry> getById(String id) {
    return _entries.doc(id).snapshots().map((doc) => Entry.fromDocument(doc));
  }

  Stream<List<Entry>> list() {
    return _entries.orderBy('createdAt', descending: true).snapshots().map(
        (value) => value.docs
            .map((document) => Entry.fromDocument(document))
            .toList());
  }

  Future remove(Entry entry) {
    return entry.reference!.delete();
  }
}
