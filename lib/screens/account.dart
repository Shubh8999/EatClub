import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final databaseReference = FirebaseDatabase.instance.reference();
  var uid = FirebaseAuth.instance.currentUser?.uid.toString();
  String username = "";
  String email = "";
  String phoneno = "";
  @override
  Widget build(BuildContext context) {
    DatabaseReference _databaseReference =
        FirebaseDatabase.instance.reference().child(uid!);
    _databaseReference.once().then((DataSnapshot snapshot) {
      var data = snapshot.value;
      setState(() {
        username = data['username'];
        email = data['email'];
        phoneno = data['phoneno'];
      });
    });
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              children: [
                Text(
                  // username,
                  "Shubham Kamodkar",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                  thickness: 1,
                  width: MediaQuery.of(context).size.width * 0.38,
                ),
                Text(
                  "Edit",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              // children: [Text(phoneno+" • "+email )],
              children: [Text("8999178480")],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print(
                          "You pressed Icon Elevated Button",
                        );
                      },
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ), //icon data for elevated button
                      label: Text(
                        "Settings & Personalisation",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(10, 20, 135, 20),
                      ), //label text
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print(
                          "You pressed Icon Elevated Button",
                        );
                      },
                      icon: Icon(
                        Icons.person_add,
                        color: Colors.black,
                      ), //icon data for elevated button
                      label: Text(
                        "Refer & Earn",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(10, 20, 247, 20),
                      ), //label text
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print(
                          "You pressed Icon Elevated Button",
                        );
                      },
                      icon: Icon(
                        Icons.currency_rupee,
                        color: Colors.black,
                      ), //icon data for elevated button
                      label: Text(
                        "Credits: ₹307",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(10, 20, 239, 20),
                      ), //label text
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print(
                          "You pressed Icon Elevated Button",
                        );
                      },
                      icon: Icon(
                        Icons.credit_card,
                        color: Colors.black,
                      ), //icon data for elevated button
                      label: Text(
                        "Saved Payment Methods",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(10, 20, 145, 20),
                      ), //label text
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print(
                          "You pressed Icon Elevated Button",
                        );
                      },
                      icon: Icon(
                        Icons.call,
                        color: Colors.black,
                      ), //icon data for elevated button
                      label: Text(
                        "Help & Support",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.fromLTRB(10, 20, 225, 20),
                      ), //label text
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 225, 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            Text(
                              'MANAGE ORDERS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              'Past Orders',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    ));
  }
}
