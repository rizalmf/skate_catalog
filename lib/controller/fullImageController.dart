import 'package:flutter/material.dart';
import 'package:skate_catalog/builder/fullImageBuilder.dart';
import 'package:skate_catalog/controller/abstractController.dart';

class FullImageController extends AbstractController {
  //contructor
  FullImageController({BuildContext context}) : super(context: context);

  StatelessWidget instance(String typeName, String asset) {
    return FullImage(typeName: typeName, asset: asset);
  }
}

class FullImage extends StatelessWidget {
  final typeName;
  final asset;

  FullImage({@required this.typeName, @required this.asset});

  @override
  Widget build(BuildContext context) {
    return FullImageBuilder().build(context, typeName, asset);
  }
}
