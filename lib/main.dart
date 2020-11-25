import 'package:flutter/material.dart';
import 'package:skate_catalog/controller/homeController.dart';
import 'package:skate_catalog/role/pathRole.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final title = PathRole.APP_TITLE;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: this.title,
      theme: ThemeData.dark(),
      home: HomeController(context: context, title: this.title).instance(),
    );
  }
}
