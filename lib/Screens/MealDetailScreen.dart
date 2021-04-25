import 'package:flutter/material.dart';
import 'package:flutter_app_online_menu/DummyData.dart';
import 'package:flutter_app_online_menu/Models/Meal.dart';

class MealDetailScreen extends StatelessWidget {
  final List<Meal> favoriteList = [];

  @override
  Widget build(BuildContext context) {
    // final mealId = ModalRoute.of(context).settings.arguments as String;
    // final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('mealId'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Image.network(
                'https://qtmd.org/wp-content/uploads/2019/07/howcuttingdo.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'Recepies',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 300,
              height: 200,
              child: ListView.builder(
                //Or model.lenght
                itemCount: 15,
                itemBuilder: (context, index) => Card(
                  color: Colors.orange,
                  child: Text(
                      'tarz pokht , tarz pokht , tarz pokht , tarz pokht , '),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Step',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.purple, width: 2)),
              width: 200,
              height: 150,
              child: ListView.builder(
                //Or model.lenght
                itemCount: 15,
                itemBuilder: (context, index) => Card(
                  color: Colors.white,
                  child: Text(
                      'tarz pokht , tarz pokht , tarz pokht , tarz pokht , '),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.auto_delete),
      ),
    );
  }
}
