import 'package:flutter/material.dart';
import 'file:///F:/AndroidStudioProjects/Flutter/flutter_app_online_menu/lib/widget/CatItem.dart';
import 'package:flutter_app_online_menu/DummyData.dart';

class CatScreen extends StatefulWidget {
  @override
  _CatScreenState createState() => _CatScreenState();
}

class _CatScreenState extends State<CatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 1.5 ,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          maxCrossAxisExtent: 200,
        ),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CatItem(
                catData.id,
                catData.title,
                catData.color,
              ),
            )
            .toList(),
      ),
    );
  }
}
