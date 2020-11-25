import 'package:flutter/material.dart';
import 'package:skate_catalog/builder/homeBuilder.dart';
import 'package:skate_catalog/controller/abstractController.dart';
import 'package:skate_catalog/factory/skateFactory.dart';

class HomeController extends AbstractController {
  //contructor
  HomeController({BuildContext context, String title})
      : super(context: context, title: title);

  StatelessWidget instance() {
    var typeList = SkateFactory().getTypeAll();
    return Home(
      typeList: typeList,
      title: this.title,
    );
  }
}

class Home extends StatelessWidget {
  final typeList;
  final title;

  Home({@required this.typeList, @required this.title});

  @override
  Widget build(BuildContext context) {
    return HomeBuilder().build(context, title, typeList);
  }
}
