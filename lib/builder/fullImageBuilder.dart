import 'package:flutter/material.dart';
import 'package:skate_catalog/builder/abstractBuilder.dart';

class FullImageBuilder extends AbstractBuilder {
  //main body
  Widget build(context, String typeName, String asset) {
    return GestureDetector(
      child: Center(
        child: Hero(
          tag: typeName,
          child: Image.asset(asset),
        ),
      ),
      onTap: () {
        this.pop(context);
      },
    );
  }

  void pop(context) {
    Navigator.pop(context);
  }
}
