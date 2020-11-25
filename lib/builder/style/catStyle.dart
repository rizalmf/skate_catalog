//another css file
import 'package:flutter/painting.dart';

class CatStyle {
  double sizeBoxHeight() {
    return 20;
  }

  double catImageHeight() {
    return 350;
  }

  double circularImageRadius() {
    return 20.0;
  }

  double paddingCatImage() {
    return 4.0;
  }

  TextStyle titleTextStyle() {
    return TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle descTextStyle() {
    return TextStyle(
      fontSize: 14,
      // letterSpacing: 2.0,
      fontStyle: FontStyle.normal,
    );
  }

  EdgeInsets descEdgeInsets() {
    return EdgeInsets.fromLTRB(10, 5, 10, 10);
  }
}
