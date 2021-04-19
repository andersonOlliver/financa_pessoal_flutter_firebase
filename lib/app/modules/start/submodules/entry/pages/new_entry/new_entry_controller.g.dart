// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_entry_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $NewEntryController = BindInject(
  (i) => NewEntryController(i<IEntryService>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewEntryController on _NewEntryControllerBase, Store {
  Computed<NewEntry>? _$newEntryComputed;

  @override
  NewEntry get newEntry =>
      (_$newEntryComputed ??= Computed<NewEntry>(() => super.newEntry,
              name: '_NewEntryControllerBase.newEntry'))
          .value;

  final _$valueAtom = Atom(name: '_NewEntryControllerBase.value');

  @override
  double get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(double value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$titleAtom = Atom(name: '_NewEntryControllerBase.title');

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

  final _$categoryAtom = Atom(name: '_NewEntryControllerBase.category');

  @override
  String get category {
    _$categoryAtom.reportRead();
    return super.category;
  }

  @override
  set category(String value) {
    _$categoryAtom.reportWrite(value, super.category, () {
      super.category = value;
    });
  }

  final _$_NewEntryControllerBaseActionController =
      ActionController(name: '_NewEntryControllerBase');

  @override
  void setValue(String v) {
    final _$actionInfo = _$_NewEntryControllerBaseActionController.startAction(
        name: '_NewEntryControllerBase.setValue');
    try {
      return super.setValue(v);
    } finally {
      _$_NewEntryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCategory(String v) {
    final _$actionInfo = _$_NewEntryControllerBaseActionController.startAction(
        name: '_NewEntryControllerBase.setCategory');
    try {
      return super.setCategory(v);
    } finally {
      _$_NewEntryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String v) {
    final _$actionInfo = _$_NewEntryControllerBaseActionController.startAction(
        name: '_NewEntryControllerBase.setTitle');
    try {
      return super.setTitle(v);
    } finally {
      _$_NewEntryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void save() {
    final _$actionInfo = _$_NewEntryControllerBaseActionController.startAction(
        name: '_NewEntryControllerBase.save');
    try {
      return super.save();
    } finally {
      _$_NewEntryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
title: ${title},
category: ${category},
newEntry: ${newEntry}
    ''';
  }
}
