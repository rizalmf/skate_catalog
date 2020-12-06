import 'package:flutter/material.dart';
import 'package:skate_catalog/builder/fullImageBuilder.dart';
import 'package:skate_catalog/controller/abstractController.dart';

class FullImageController extends AbstractController {
  //contructor
  FullImageController({BuildContext context}) : super(context: context);

  StatelessWidget instance(String typeName, String asset, Function likeFunc) {
    return FullImage(
      typeName: typeName,
      asset: asset,
      likeFunc: likeFunc,
    );
  }
}

class FullImage extends StatelessWidget {
  final typeName;
  final asset;
  final likeFunc;

  FullImage(
      {@required this.typeName, @required this.asset, @required this.likeFunc});

  @override
  Widget build(BuildContext context) {
    return FullImageBuilder().build(context, typeName, asset, likeFunc);
  }
}
