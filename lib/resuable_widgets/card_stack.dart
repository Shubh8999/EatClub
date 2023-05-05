import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardGrid extends StatefulWidget {
  const CardGrid({Key? key}) : super(key: key);

  @override
  State<CardGrid> createState() => _CardGridState();
}

class _CardGridState extends State<CardGrid> {
  @override
  Widget build(BuildContext context) {
    List<String> strs = [
      "assets/Offers/Offer1.jpg",
      "assets/Offers/Offer2.jpg",
      "assets/Offers/Offer3.jpg",
    ];

    return Container(
      height: MediaQuery.of(context).size.height * 1.24,
      child: GridView.count(
        crossAxisCount: 2,
        physics: NeverScrollableScrollPhysics(),
        primary: false,
        children: strs.map((url) {
          return Container(
            child: Image.asset(url),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.only(bottom: 10),
            color: Colors.white,
          );
        }).toList(),
      ),
    );
  }
}
