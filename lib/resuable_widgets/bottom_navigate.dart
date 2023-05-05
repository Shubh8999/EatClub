import 'package:flutter/material.dart';
import 'package:flutter_app/screens/account.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:flutter_app/screens/login.dart';
import 'package:flutter_app/screens/meal_menu.dart';
import 'package:flutter_app/screens/mealful.dart';
import 'package:flutter_app/screens/offers.dart';

Future main() async {
  runApp(BottomNavig());
}

class BottomNavig extends StatefulWidget {
  @override
  _BottomNavigState createState() => _BottomNavigState();
}

class _BottomNavigState extends State<BottomNavig>
    with AutomaticKeepAliveClientMixin {
  int _selectedIndex = 0;
  final List<Widget> _childWidgets = [
    HomePage(),
    Offers(),
    MealMenu(),
    Login(),
    Account()
  ];

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: _childWidgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // icon: Icon(null),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.percent_rounded),
            // icon: Icon(null),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.card_giftcard),
            icon: Icon(null),
            label: 'EatClub',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            // icon: Icon(null),
            label: 'Free Food',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            // icon: Icon(null),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
