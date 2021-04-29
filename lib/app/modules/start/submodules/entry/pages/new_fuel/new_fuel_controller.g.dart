// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_fuel_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $NewFuelController = BindInject(
  (i) => NewFuelController(),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewFuelController on _NewFuelControllerBase, Store {
  Computed<bool>? _$hasAutoFocusComputed;

  @override
  bool get hasAutoFocus =>
      (_$hasAutoFocusComputed ??= Computed<bool>(() => super.hasAutoFocus,
              name: '_NewFuelControllerBase.hasAutoFocus'))
          .value;
  Computed<NewFuel>? _$newFuelComputed;

  @override
  NewFuel get newFuel =>
      (_$newFuelComputed ??= Computed<NewFuel>(() => super.newFuel,
              name: '_NewFuelControllerBase.newFuel'))
          .value;

  final _$typeAtom = Atom(name: '_NewFuelControllerBase.type');

  @override
  FuelType get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(FuelType value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  final _$valueAtom = Atom(name: '_NewFuelControllerBase.value');

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

  final _$titleAtom = Atom(name: '_NewFuelControllerBase.title');

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

  final _$paymentAtom = Atom(name: '_NewFuelControllerBase.payment');

  @override
  PaymentLabelDto get payment {
    _$paymentAtom.reportRead();
    return super.payment;
  }

  @override
  set payment(PaymentLabelDto value) {
    _$paymentAtom.reportWrite(value, super.payment, () {
      super.payment = value;
    });
  }

  final _$categoryAtom = Atom(name: '_NewFuelControllerBase.category');

  @override
  CategoryLabelDto get category {
    _$categoryAtom.reportRead();
    return super.category;
  }

  @override
  set category(CategoryLabelDto value) {
    _$categoryAtom.reportWrite(value, super.category, () {
      super.category = value;
    });
  }

  final _$literAtom = Atom(name: '_NewFuelControllerBase.liter');

  @override
  double get liter {
    _$literAtom.reportRead();
    return super.liter;
  }

  @override
  set liter(double value) {
    _$literAtom.reportWrite(value, super.liter, () {
      super.liter = value;
    });
  }

  final _$valueByLiterAtom = Atom(name: '_NewFuelControllerBase.valueByLiter');

  @override
  double get valueByLiter {
    _$valueByLiterAtom.reportRead();
    return super.valueByLiter;
  }

  @override
  set valueByLiter(double value) {
    _$valueByLiterAtom.reportWrite(value, super.valueByLiter, () {
      super.valueByLiter = value;
    });
  }

  final _$kilometersAtom = Atom(name: '_NewFuelControllerBase.kilometers');

  @override
  int get kilometers {
    _$kilometersAtom.reportRead();
    return super.kilometers;
  }

  @override
  set kilometers(int value) {
    _$kilometersAtom.reportWrite(value, super.kilometers, () {
      super.kilometers = value;
    });
  }

  final _$isAdvancedAtom = Atom(name: '_NewFuelControllerBase.isAdvanced');

  @override
  bool get isAdvanced {
    _$isAdvancedAtom.reportRead();
    return super.isAdvanced;
  }

  @override
  set isAdvanced(bool value) {
    _$isAdvancedAtom.reportWrite(value, super.isAdvanced, () {
      super.isAdvanced = value;
    });
  }

  final _$createdAtAtom = Atom(name: '_NewFuelControllerBase.createdAt');

  @override
  DateTime get createdAt {
    _$createdAtAtom.reportRead();
    return super.createdAt;
  }

  @override
  set createdAt(DateTime value) {
    _$createdAtAtom.reportWrite(value, super.createdAt, () {
      super.createdAt = value;
    });
  }

  final _$_NewFuelControllerBaseActionController =
      ActionController(name: '_NewFuelControllerBase');

  @override
  void setType(FuelType v) {
    final _$actionInfo = _$_NewFuelControllerBaseActionController.startAction(
        name: '_NewFuelControllerBase.setType');
    try {
      return super.setType(v);
    } finally {
      _$_NewFuelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setValue(String v) {
    final _$actionInfo = _$_NewFuelControllerBaseActionController.startAction(
        name: '_NewFuelControllerBase.setValue');
    try {
      return super.setValue(v);
    } finally {
      _$_NewFuelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPayment(PaymentLabelDto v) {
    final _$actionInfo = _$_NewFuelControllerBaseActionController.startAction(
        name: '_NewFuelControllerBase.setPayment');
    try {
      return super.setPayment(v);
    } finally {
      _$_NewFuelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCategory(CategoryLabelDto v) {
    final _$actionInfo = _$_NewFuelControllerBaseActionController.startAction(
        name: '_NewFuelControllerBase.setCategory');
    try {
      return super.setCategory(v);
    } finally {
      _$_NewFuelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLiter(String v) {
    final _$actionInfo = _$_NewFuelControllerBaseActionController.startAction(
        name: '_NewFuelControllerBase.setLiter');
    try {
      return super.setLiter(v);
    } finally {
      _$_NewFuelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setValueByLiter(String v) {
    final _$actionInfo = _$_NewFuelControllerBaseActionController.startAction(
        name: '_NewFuelControllerBase.setValueByLiter');
    try {
      return super.setValueByLiter(v);
    } finally {
      _$_NewFuelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCreatedAt(DateTime v) {
    final _$actionInfo = _$_NewFuelControllerBaseActionController.startAction(
        name: '_NewFuelControllerBase.setCreatedAt');
    try {
      return super.setCreatedAt(v);
    } finally {
      _$_NewFuelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAdvanced(bool isAdvanced) {
    final _$actionInfo = _$_NewFuelControllerBaseActionController.startAction(
        name: '_NewFuelControllerBase.setAdvanced');
    try {
      return super.setAdvanced(isAdvanced);
    } finally {
      _$_NewFuelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void save() {
    final _$actionInfo = _$_NewFuelControllerBaseActionController.startAction(
        name: '_NewFuelControllerBase.save');
    try {
      return super.save();
    } finally {
      _$_NewFuelControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
type: ${type},
value: ${value},
title: ${title},
payment: ${payment},
category: ${category},
liter: ${liter},
valueByLiter: ${valueByLiter},
kilometers: ${kilometers},
isAdvanced: ${isAdvanced},
createdAt: ${createdAt},
hasAutoFocus: ${hasAutoFocus},
newFuel: ${newFuel}
    ''';
  }
}
