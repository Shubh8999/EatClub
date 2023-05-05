import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/resuable_widgets/carousel.dart';
import 'package:flutter_app/resuable_widgets/home_list.dart';
import 'package:flutter_app/resuable_widgets/home_list2.dart';
import 'package:flutter_app/screens/login.dart';
import 'package:flutter_app/screens/login1.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final databaseReference = FirebaseDatabase.instance.reference();
  var uid = FirebaseAuth.instance.currentUser?.uid.toString();
  String username = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    DatabaseReference _databaseReference =
        FirebaseDatabase.instance.reference().child(uid!);
    _databaseReference.once().then((DataSnapshot snapshot) {
      var data = snapshot.value;
      setState(() {
        username = data['username'];
        email = data['email'];
      });
    });
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'EatClub',
              style: TextStyle(color: Colors.black),
            )),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SignInScreen(),
                ),
              );
            },
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Carousel(),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0), //Container
              ),
              HorizontalList(),
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
                      padding: EdgeInsets.fromLTRB(
                          20, 20, 20, 0), //You can use EdgeInsets like above
                      margin: EdgeInsets.all(0.5),
                      child: Text(
                        "Brands",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              HorizontalList2(),
            ],
          ),
        ),
      ),
    );
  }
}
