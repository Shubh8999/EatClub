import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/mealful.dart';

class HorizontalList2 extends StatelessWidget {
  const HorizontalList2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> strs = [
      "https://assets.box8.co.in/vertical-rectangle/web/brand/1",
      "https://assets.box8.co.in/vertical-rectangle/web/brand/22",
      "https://assets.box8.co.in/vertical-rectangle/web/brand/13",
      "https://assets.box8.co.in/vertical-rectangle/web/brand/16",
      "https://assets.box8.co.in/vertical-rectangle/web/brand/15",
      "https://assets.box8.co.in/vertical-rectangle/web/brand/20",
      "https://assets.box8.co.in/vertical-rectangle/web/brand/21",
      "https://assets.box8.co.in/vertical-rectangle/web/brand/14",
      "https://assets.box8.co.in/vertical-rectangle/web/brand/24",
      "https://assets.box8.co.in/vertical-rectangle/web/brand/28"
    ];

    List<String> brands = [
      'BOX8',
      'ZAZA 22 Spice Biryani',
      'MOjO Pizza',
      'NH1 Bowls',
      'Mealful Rolls',
      'LEANCRUST PIZZA',
      'Globo Ice Creams',
      'ITMINAAN MATKA BIRYANI',
      'BATTI CHICKEN WINGS'
    ];

    List<String> bimg = [
      "https://assets.box8.co.in/icon/web/brand/1",
      "https://assets.box8.co.in/icon/web/brand/22",
      "https://assets.box8.co.in/icon/web/brand/13",
      "https://assets.box8.co.in/icon/web/brand/16",
      "https://assets.box8.co.in/icon/web/brand/15",
      "https://assets.box8.co.in/icon/web/brand/20",
      "https://assets.box8.co.in/icon/web/brand/21",
      "https://assets.box8.co.in/icon/web/brand/14",
      "https://assets.box8.co.in/icon/web/brand/24",
      "https://assets.box8.co.in/icon/web/brand/28",
    ];
    return Container(
      height: MediaQuery.of(context).size.height * 1.24,
      child: GridView.count(
        crossAxisCount: 2,
        physics: NeverScrollableScrollPhysics(),
        primary: false,
        children: strs.map((url) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MealFul(
                        brandName: brands[strs.indexOf(url)],
                        brandImage: bimg[strs.indexOf(url)])),
              );
            },
            child: Container(
              child: Image.network(url),
              margin: EdgeInsets.zero,
              padding: EdgeInsets.only(bottom: 10),
              color: Colors.white,
            ),
          );
        }).toList(),
      ),
    );
  }
}
