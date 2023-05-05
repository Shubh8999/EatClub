import 'package:flutter/material.dart';
import 'package:flutter_app/resuable_widgets/carousel.dart';
import 'package:flutter_app/resuable_widgets/home_list2.dart';
import 'package:flutter_app/resuable_widgets/meal_car.dart';
import 'package:flutter_app/resuable_widgets/meal_list.dart';

class MealFul extends StatefulWidget {
  const MealFul({Key? key, required this.brandName, required this.brandImage})
      : super(key: key);
  final String brandName;
  final String brandImage;

  @override
  State<MealFul> createState() => _MealFulState();
}

class _MealFulState extends State<MealFul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.brandName,
                style: TextStyle(color: Colors.black),
              )),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    widget.brandName,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ),
                              ),
                              Text(
                                "India's Biggest Rolls",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                            ],
                          ),
                          VerticalDivider(
                            color: Colors.transparent,
                            thickness: 1,
                            width: MediaQuery.of(context).size.width * 0.30,
                          ),
                          Column(
                            children: [
                              Image(
                                alignment: Alignment.topRight,
                                width: 70,
                                image: NetworkImage(widget.brandImage),
                              ),
                            ],
                          )
                        ],
                      )),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(left: 20.0, top: 30.0),
                        child: Icon(
                          Icons.percent,
                          color: Colors.greenAccent,
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(left: 5, top: 30),
                          child: Text(
                            "Join Eatclub to get 30% OFF on every order",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.greenAccent),
                          ))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 35, 20, 0), //Container
                ),
                MealCarousel(),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 10.0,
                        left: 5,
                      ),
                      child: Container(
                        //apply margin and padding using Container Widget.
                        padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 15), //You can use EdgeInsets like above
                        margin: EdgeInsets.all(0.5),
                        child: Text(
                          "Shop By Category",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                MealList()
              ],
            ),
          ),
        ));
  }
}
