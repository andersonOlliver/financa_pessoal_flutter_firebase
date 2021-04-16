import 'package:financa_pessoal/app/core/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finança Pessoal',
      builder: asuka.builder,
      theme: theme(),
    ).modular();
  }
}
