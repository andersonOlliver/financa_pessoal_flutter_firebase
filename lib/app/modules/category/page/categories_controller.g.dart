// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CategoriesController = BindInject(
  (i) => CategoriesController(i<ICategoryService>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoriesController on _CategoriesControllerBase, Store {
  Computed<NewCategory>? _$newCategoryComputed;

  @override
  NewCategory get newCategory =>
      (_$newCategoryComputed ??= Computed<NewCategory>(() => super.newCategory,
              name: '_CategoriesControllerBase.newCategory'))
          .value;

  final _$categoriesListAtom =
      Atom(name: '_CategoriesControllerBase.categoriesList');

  @override
  ObservableStream<List<Category>>? get categoriesList {
    _$categoriesListAtom.reportRead();
    return super.categoriesList;
  }

  @override
  set categoriesList(ObservableStream<List<Category>>? value) {
    _$categoriesListAtom.reportWrite(value, super.categoriesList, () {
      super.categoriesList = value;
    });
  }

  final _$titleAtom = Atom(name: '_CategoriesControllerBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$colorAtom = Atom(name: '_CategoriesControllerBase.color');

  @override
  String get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(String value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  final _$_CategoriesControllerBaseActionController =
      ActionController(name: '_CategoriesControllerBase');

  @override
  void getList() {
    final _$actionInfo = _$_CategoriesControllerBaseActionController
        .startAction(name: '_CategoriesControllerBase.getList');
    try {
      return super.getList();
    } finally {
      _$_CategoriesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String v) {
    final _$actionInfo = _$_CategoriesControllerBaseActionController
        .startAction(name: '_CategoriesControllerBase.setTitle');
    try {
      return super.setTitle(v);
    } finally {
      _$_CategoriesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setColor(String v) {
    final _$actionInfo = _$_CategoriesControllerBaseActionController
        .startAction(name: '_CategoriesControllerBase.setColor');
    try {
      return super.setColor(v);
    } finally {
      _$_CategoriesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void save() {
    final _$actionInfo = _$_CategoriesControllerBaseActionController
        .startAction(name: '_CategoriesControllerBase.save');
    try {
      return super.save();
    } finally {
      _$_CategoriesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
categoriesList: ${categoriesList},
title: ${title},
color: ${color},
newCategory: ${newCategory}
    ''';
  }
}
