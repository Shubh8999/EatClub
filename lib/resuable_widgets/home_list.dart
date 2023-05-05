import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 300,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 0),
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://assets.box8.co.in/vertical-rectangle/web/brand/28"),
              ),
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 0),
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://assets.box8.co.in/square-v2/hdpi/category/336"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
