// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_category_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $NewCategoryController = BindInject(
  (i) => NewCategoryController(i<ICategoryService>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewCategoryController on _NewCategoryControllerBase, Store {
  Computed<Color>? _$colorParsedComputed;

  @override
  Color get colorParsed =>
      (_$colorParsedComputed ??= Computed<Color>(() => super.colorParsed,
              name: '_NewCategoryControllerBase.colorParsed'))
          .value;
  Computed<NewCategory>? _$newCategoryComputed;

  @override
  NewCategory get newCategory =>
      (_$newCategoryComputed ??= Computed<NewCategory>(() => super.newCategory,
              name: '_NewCategoryControllerBase.newCategory'))
          .value;

  final _$titleAtom = Atom(name: '_NewCategoryControllerBase.title');

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

  final _$colorAtom = Atom(name: '_NewCategoryControllerBase.color');

  @override
  int get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(int value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  final _$_NewCategoryControllerBaseActionController =
      ActionController(name: '_NewCategoryControllerBase');

  @override
  void setTitle(String v) {
    final _$actionInfo = _$_NewCategoryControllerBaseActionController
        .startAction(name: '_NewCategoryControllerBase.setTitle');
    try {
      return super.setTitle(v);
    } finally {
      _$_NewCategoryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setColor(int v) {
    final _$actionInfo = _$_NewCategoryControllerBaseActionController
        .startAction(name: '_NewCategoryControllerBase.setColor');
    try {
      return super.setColor(v);
    } finally {
      _$_NewCategoryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void save() {
    final _$actionInfo = _$_NewCategoryControllerBaseActionController
        .startAction(name: '_NewCategoryControllerBase.save');
    try {
      return super.save();
    } finally {
      _$_NewCategoryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
color: ${color},
colorParsed: ${colorParsed},
newCategory: ${newCategory}
    ''';
  }
}
