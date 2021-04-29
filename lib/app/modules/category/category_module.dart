import 'package:financa_pessoal/app/modules/category/page/list_categories/list_categories_page.dart';
import 'package:financa_pessoal/app/modules/category/page/new_category/new_category_controller.dart';
import 'package:financa_pessoal/app/modules/category/page/new_category/new_category_page.dart';
import 'package:financa_pessoal/app/modules/category/service/category_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'page/list_categories/categories_controller.dart';

class CategoryModule extends Module {
  @override
  final List<Bind> binds = [
    $CategoryService,
    $CategoriesController,
    $NewCategoryController,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => ListCategoriesPage()),
    ChildRoute('/new', child: (_, __) => NewCategoryPage())
  ];
}
