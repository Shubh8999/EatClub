import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MealCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Image.asset('assets/MealFul/MealC1.jpg'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Image.asset('assets/MealFul/MealC2.jpg'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Image.asset('assets/MealFul/MealC3.jpg'),
          ),
        ],
        //Slider Container properties
        options: CarouselOptions(autoPlay: true, viewportFraction: 1),
      ),
    );
  }
}
