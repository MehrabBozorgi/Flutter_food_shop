import 'package:flutter/material.dart';

import '../Screens/CatMealsScreen.dart';

class CatItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CatItem(
    this.id,
    this.title,
    this.color,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CatMealsScreen(id, title),
          ),
        );
      },
      autofocus: true,
      splashColor: Colors.black,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.5),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
