import 'package:financa_pessoal/app/modules/category/page/categories_controller.dart';
import 'package:financa_pessoal/app/modules/category/page/list_categories_page.dart';
import 'package:financa_pessoal/app/modules/category/service/category_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class CategoryModule extends Module {
  @override
  final List<Bind> binds = [
    $CategoryService,
    $CategoriesController,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => ListCategoriesPage())
  ];
}
