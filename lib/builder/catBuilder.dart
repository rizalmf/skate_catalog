import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:skate_catalog/builder/abstractBuilder.dart';
import 'package:skate_catalog/builder/style/catStyle.dart';
import 'package:skate_catalog/controller/fullImageController.dart';
import 'package:skate_catalog/model/catSkate.dart';
import 'package:skate_catalog/model/skateType.dart';

class CatBuilder extends AbstractBuilder {
  //main body
  Widget build(context, CatSkate cat) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            this.buildListImage(context, cat),
            this.buildTypeInformation(cat.skateType),
            // this.buildTypeDesc(cat.skateType.desc),
          ],
        ),
      ),
    );
  }

  Widget buildListImage(context, CatSkate cat) {
    return Container(
      height: CatStyle().catImageHeight(),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: cat.imgAssets.map((url) {
          bool like = false;
          return Likes(like: like, url: url, cat: cat);
        }).toList(),
      ),
    );
  }

  Widget buildTypeInformation(SkateType type) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: CatStyle().sizeBoxHeight(),
        ),
        this.buildTypeTitle(type.name),
        SizedBox(
          height: CatStyle().sizeBoxHeight(),
        ),
        this.buildTypeDesc(type.desc)
      ],
    );
  }

  Widget buildTypeTitle(String name) {
    return Text(
      name,
      style: CatStyle().titleTextStyle(),
    );
  }

  Widget buildTypeDesc(String desc) {
    return Padding(
      padding: CatStyle().descEdgeInsets(),
      child: Text(
        desc,
        style: CatStyle().descTextStyle(),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class Likes extends StatefulWidget {
  final like;
  final cat;
  final url;

  Likes({@required this.like, @required this.cat, @required this.url});

  @override
  _LikesState createState() => _LikesState(like: like, url: url, cat: cat);
}

class _LikesState extends State<Likes> {
  bool like;
  final cat;
  final url;

  _LikesState({@required this.like, @required this.cat, @required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(CatStyle().paddingCatImage()),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(CatStyle().circularImageRadius()),
              child: Image.asset(url),
            ),
            LikeButton(
              isLiked: like,
              size: 85,
            )
          ],
        ),
      ),
      onTap: () {
        this.push(context, cat.skateType.name, url, like);
      },
    );
  }

  void push(context, typeName, asset, like) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FullImageController().instance(typeName, asset, togleLike());
    }));
  }

  Function togleLike() {
    return () {
      setState(() {
        like = !like;
      });
    };
  }
}
