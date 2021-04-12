import 'package:financa_pessoal/app/modules/category/model/category_model.dart';
import 'package:financa_pessoal/app/modules/category/model/new_category_dto.dart';

abstract class ICategoryService {
  Future add(NewCategory category);
  Stream<List<Category>> list();
  Future remove(Category category);
}
