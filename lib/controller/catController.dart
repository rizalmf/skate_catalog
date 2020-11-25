import 'package:flutter/material.dart';
import 'package:skate_catalog/builder/catBuilder.dart';
import 'package:skate_catalog/controller/abstractController.dart';
import 'package:skate_catalog/factory/skateFactory.dart';
import 'package:skate_catalog/model/catSkate.dart';
import 'package:skate_catalog/model/skateType.dart';

class CatController extends AbstractController {
  //contructor
  CatController({BuildContext context}) : super(context: context);

  StatelessWidget instance(SkateType type) {
    return Cat(
      cat: SkateFactory().cat(type),
    );
  }
}

class Cat extends StatelessWidget {
  final CatSkate cat;

  Cat({@required this.cat});

  @override
  Widget build(BuildContext context) {
    return CatBuilder().build(context, cat);
  }
}
