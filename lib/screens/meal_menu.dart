import 'package:flutter/material.dart';
import 'package:flutter_app/resuable_widgets/menu.dart';

class MealMenu extends StatefulWidget {
  const MealMenu({Key? key}) : super(key: key);

  @override
  State<MealMenu> createState() => _MealMenuState();
}

class _MealMenuState extends State<MealMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MENU',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
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
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 200,
                        color: Colors.grey,
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Center(child: Text('Multi Roll Combos [FREE items of ₹120]', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      Container(
                        width: 200,
                        color: Colors.grey,
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Center(child: Text('Roll & Starter Combos [FREE items of ₹120]', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      Container(
                        width: 200,
                        color: Colors.grey,
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Center(child: Text('Aloo Rolls [Big 9"]', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      Container(
                        width: 200,
                        color: Colors.grey,
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Center(child: Text('Paneer Rolls [Big 9"]', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 25, 20, 0), //Container
                ),
                Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Multi Roll Combos [FREE items of ₹120]', style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold)),
                    )
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 0), //Container
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('All other offers applicable on Multi Roll Combos. get that party started!', style: TextStyle(fontSize: 16),),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0), //Container
                ),
                Menu(),
              ],
            ),
        ),
      )
    );
  }
}
