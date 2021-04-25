import 'package:flutter/material.dart';
import 'Models/Meal.dart';
import 'package:flutter_app_online_menu/Screens/TabScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Meal> availabelMeals;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Colors.white,
      ),
      home: TabScreen(availabelMeals),
    );
  }
}
