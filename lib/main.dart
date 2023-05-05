import 'package:flutter/material.dart';
import 'package:flutter_app/resuable_widgets/bottom_navigate.dart';
import 'package:flutter_app/screens/account.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:flutter_app/screens/login.dart';
import 'package:flutter_app/screens/login1.dart';
import 'package:flutter_app/screens/meal_menu.dart';
import 'package:flutter_app/screens/mealful.dart';
import 'package:flutter_app/screens/offers.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SignInScreen(),
    );
  }
}