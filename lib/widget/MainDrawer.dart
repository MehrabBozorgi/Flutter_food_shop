import 'package:flutter/material.dart';
import 'package:flutter_app_online_menu/DummyData.dart';
import 'package:flutter_app_online_menu/Models/Meal.dart';
import 'package:flutter_app_online_menu/Screens/FilterScreen.dart';
import 'package:flutter_app_online_menu/Screens/TabScreen.dart';

class MainDrawer extends StatefulWidget {

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {


  @override
  Widget build(BuildContext context) {
    Map<String, bool> _filters = {
      'gluten': false,
      'lactose': false,
      'vegan': false,
      'vegetarian': false,
    };
    List<Meal> _availabelMeals = DUMMY_MEALS;


    void _setFilter(Map<String, bool> filterData) {
      setState(() {
        _filters = filterData;

        _availabelMeals = DUMMY_MEALS.where((meal) {
          if (_filters['gluten'] && !meal.isGlutenFree) {
            return false;
          }
          if (_filters['lactose'] && !meal.isLactoseFree) {
            return false;
          }
          if (_filters['vegan'] && !meal.isVegan) {
            return false;
          }

          if (_filters['vegetarian'] && !meal.isVegetarian) {
            return false;
          }
          return true;
        }).toList();
      });
    }
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            color: Colors.pink[200],
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Lets Cooking Up',
              style: TextStyle(
                  color: Colors.purple[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
            ),
            title: Text(
              'Meals',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => TabScreen(_availabelMeals),
                ),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
            ),
            title: Text(
              'Filter',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => FilterScreen(_filters,_setFilter),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
