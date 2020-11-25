import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

//css ;D
//Dart doesnt have private vars.. maybe mvc not eficient here?
class HomeStyle {
  //------------ APPBAR PROPERTIES --------------//
  bool appBarCenterText() {
    return true;
  }

  TextStyle appBarTextStyle() {
    return TextStyle(
      wordSpacing: 6,
      fontSize: 24,
    );
  }

  double appBarElevation() {
    return 0;
  }
  //------------ END APPBAR PROPERTIES --------------//

  //------------ BODY PROPERTIES --------------//
  int bodyGridCrossAxisCount() {
    return 2;
  }

  double bodyGridChildAspectRatio() {
    return (9 / 17.0);
  }

  double paddingCatalogButton() {
    return 8.0;
  }

  double circularButtonRadius() {
    return 20.0;
  }

  double paddingCatalogName() {
    return 8.0;
  }

  TextStyle catalogTextStyle() {
    return TextStyle(
      backgroundColor: Colors.black26,
      fontSize: 25,
    );
  }
  //------------ END BODY PROPERTIES --------------//
}
