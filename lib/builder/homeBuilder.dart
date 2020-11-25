import 'package:flutter/material.dart';
import 'package:skate_catalog/builder/abstractBuilder.dart';
import 'package:skate_catalog/builder/style/homeStyle.dart';
import 'package:skate_catalog/controller/catController.dart';

class HomeBuilder extends AbstractBuilder {
  //main body
  Widget build(context, title, List typeList) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: HomeStyle().appBarElevation(),
        // centerTitle: HomeStyle().appBarCenterText(),
        // title: Text(
        //   title,
        //   style: HomeStyle().appBarTextStyle(),
        // ),
        child: Text(
          title,
          style: HomeStyle().appBarTextStyle(),
          textAlign: TextAlign.center,
        ),
      ),
      body: GridView.count(
        childAspectRatio: HomeStyle().bodyGridChildAspectRatio(),
        crossAxisCount: HomeStyle().bodyGridCrossAxisCount(),
        children: typeList.map((type) {
          return this.buildCatalogButton(context, type);
        }).toList(),
      ),
    );
  }

  Widget buildCatalogButton(context, type) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          HomeStyle().circularButtonRadius(),
        ),
      ),
      padding: EdgeInsets.all(HomeStyle().paddingCatalogButton()),
      onPressed: () {
        this.push(context, type);
      },
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(
              HomeStyle().circularButtonRadius(),
            ),
            child: Image.asset(
              type.imgAsset,
              fit: BoxFit.fitHeight,
            ),
          ),
          this.buildCatalogText(type.name)
        ],
      ),
    );
  }

  //anonymous closure? i clearly dont understand..
  void push(context, type) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CatController().instance(type);
    }));
  }

  Widget buildCatalogText(String name) {
    return Padding(
      padding: EdgeInsets.all(HomeStyle().paddingCatalogName()),
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: HomeStyle().catalogTextStyle(),
        ),
      ),
    );
  }
}
