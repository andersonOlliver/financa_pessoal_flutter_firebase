// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_entries_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $EntryController = BindInject(
  (i) => EntryController(i<IEntryService>()),
  isSingleton: true,
  isLazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EntryController on _EntryControllerBase, Store {
  final _$entriesListAtom = Atom(name: '_EntryControllerBase.entriesList');

  @override
  ObservableStream<List<Entry>>? get entriesList {
    _$entriesListAtom.reportRead();
    return super.entriesList;
  }

  @override
  set entriesList(ObservableStream<List<Entry>>? value) {
    _$entriesListAtom.reportWrite(value, super.entriesList, () {
      super.entriesList = value;
    });
  }

  final _$_EntryControllerBaseActionController =
      ActionController(name: '_EntryControllerBase');

  @override
  void getList() {
    final _$actionInfo = _$_EntryControllerBaseActionController.startAction(
        name: '_EntryControllerBase.getList');
    try {
      return super.getList();
    } finally {
      _$_EntryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
entriesList: ${entriesList}
    ''';
  }
}
