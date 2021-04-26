import 'package:flutter/material.dart';
import 'package:flutter_app_online_menu/Models/Meal.dart';
import 'package:flutter_app_online_menu/widget/MainDrawer.dart';

import 'CatScreen.dart';
import 'FavoriteScreen.dart';

class TabScreen extends StatefulWidget {
  List<Meal> availabelMeals;

  TabScreen(this.availabelMeals);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedPageIndex = 0;
  List<Meal> _favoriteMeals = [];

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      CatScreen(),
      FavoriteScreen(),
    ];

    void _selectPage(int index) {
      setState(() {
        _selectedPageIndex = index;
      });
    }

    return
        // DefaultTabController(
        // length: 2,
        // // با اون تب شروع میکنه
        // initialIndex: 0,
        // child:
        Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
        // bottom: TabBar(
        //   tabs: [
        //     Tab(
        //       icon: Icon(Icons.category),
        //       text: 'category',
        //     ),
        //     Tab(
        //       icon: Icon(Icons.star),
        //       text: 'Favorite',
        //     ),
        //   ],
        // ),
      ),
      drawer:MainDrawer(),

      body: _pages[_selectedPageIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
        ],
        //
        //

        //
        //
      ),

      //
      // TabBarView(
      //   children: [
      //     CatScreen(),
      //     FavoriteScreen(),
      //   ],
      // ),
      //),
    );
  }
}
