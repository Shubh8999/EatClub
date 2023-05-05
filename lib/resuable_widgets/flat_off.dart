import 'package:flutter/material.dart';
import 'package:flutter_app/resuable_widgets/card_stack.dart';
import 'package:flutter_app/resuable_widgets/home_list.dart';

class FlatOFF extends StatefulWidget {
  const FlatOFF({Key? key}) : super(key: key);

  @override
  State<FlatOFF> createState() => _FlatOFFState();
}

class _FlatOFFState extends State<FlatOFF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 20.0, top: 30.0),
                    child: Text(
                      'Flat OFF',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 35, 20, 0), //Container
                ),
                CardGrid(),
              ],
            ),
          ),
        ));
  }
}
