import 'package:financa_pessoal/app/modules/category/model/category_model.dart';
import 'package:financa_pessoal/app/modules/category/service/category_service_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_triple/mobx_triple.dart' as triple;

part 'categories_controller.g.dart';

@Injectable()
class CategoriesController = _CategoriesControllerBase
    with _$CategoriesController;

abstract class _CategoriesControllerBase
    extends triple.MobXStore<Exception, List<Category>> with Store {
  final ICategoryService _service;

  _CategoriesControllerBase(this._service) : super(List.empty()) {
    getList();
  }

  @action
  Future<void> getList() async {
    setLoading(true);
    _service.list().listen(
      (result) {
        update(result);
        setLoading(false);
      },
      onError: (err) => setError(Exception(err.toStrign())),
      onDone: () => setLoading(false),
    );
  }
}
