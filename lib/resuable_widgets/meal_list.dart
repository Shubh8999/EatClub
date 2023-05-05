import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/meal_menu.dart';

class MealList extends StatelessWidget {
  const MealList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> strs = [
      "assets/MealFul/MealL1.jpg",
      "assets/MealFul/MealL3.jpg",
      "assets/MealFul/MealL6.jpg",
      "assets/MealFul/MealL2.jpg",
      "assets/MealFul/MealL5.jpg",
      "assets/MealFul/MealL4.jpg",
      "assets/MealFul/MealL10.jpg",
      "assets/MealFul/MealL9.jpg",
      "assets/MealFul/MealL7.jpg",
      "assets/MealFul/MealL8.jpg",
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
                MaterialPageRoute(builder: (context) => MealMenu()),
              );
            },
            child: Container(
              child: Image.asset(url),
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
