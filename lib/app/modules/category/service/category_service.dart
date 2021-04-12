import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:financa_pessoal/app/modules/category/model/category_model.dart';
import 'package:financa_pessoal/app/modules/category/model/new_category_dto.dart';
import 'package:financa_pessoal/app/modules/category/service/category_service_interface.dart';
import 'package:financa_pessoal/app/modules/shared/store/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'category_service.g.dart';

@Injectable()
class CategoryService implements ICategoryService {
  final FirebaseFirestore _firestore;
  final AuthStore _store;
  late CollectionReference _categories;

  CategoryService(this._firestore, this._store) {
    _categories = _firestore.collection("categories");
  }

  Future add(NewCategory category) async {
    print(_store.currentUser.toJson());
    var categoryWithUser =
        category.copyWith(userId: _store.currentUser.userId!);
    return await _categories.add(categoryWithUser.toJson());
  }

  Stream<List<Category>> list() {
    return _categories
        .where('userId', isEqualTo: _store.currentUser.userId)
        .snapshots()
        .map((value) => value.docs
            .map((document) => Category.fromDocument(document))
            .toList());
  }

  Future remove(Category category) {
    return category.reference!.delete();
  }
}
