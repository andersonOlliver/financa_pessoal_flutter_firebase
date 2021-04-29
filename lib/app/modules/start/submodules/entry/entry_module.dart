import 'package:financa_pessoal/app/modules/start/submodules/entry/pages/new_fuel/new_fuel_controller.dart';
import 'package:financa_pessoal/app/modules/start/submodules/entry/service/entry_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/list_entries/list_entries_controller.dart';
import 'pages/list_entries/list_entries_page.dart';
import 'pages/new_entry/new_entry_controller.dart';
import 'pages/new_entry/new_entry_page.dart';
import 'pages/new_fuel/new_fuel_page.dart';

class EntryModule extends Module {
  @override
  final List<Bind> binds = [
    $EntryService,
    $EntryController,
    $NewEntryController,
    $NewFuelController,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('', child: (_, args) => ListEntriesPage()),
    ChildRoute('new-entry', child: (_, args) => NewEntryPage()),
    ChildRoute('new-fuel', child: (_, args) => NewFuelPage())
  ];
}
