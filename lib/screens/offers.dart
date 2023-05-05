import 'package:flutter/material.dart';
import 'package:flutter_app/resuable_widgets/flat_off.dart';

void main() {
  runApp(const Offers());
}

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'All Offers',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Flat OFF',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Freebies',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Payment Partners',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            title: const Text(
              'DEALS',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
          ),
          body: const TabBarView(
            children: [
              FlatOFF(),
              FlatOFF(),
              Text('Freebies'),
              Text('Payment Partners'),
            ],
          ),
        ),
      ),
    );
  }
}