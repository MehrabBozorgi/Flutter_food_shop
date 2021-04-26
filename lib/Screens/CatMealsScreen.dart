import 'package:flutter/material.dart';
import 'package:flutter_app_online_menu/DummyData.dart';
import 'package:flutter_app_online_menu/widget/MeaItem.dart';

class CatMealsScreen extends StatelessWidget {
  final String catId;
  final String catTitle;

  CatMealsScreen(this.catId, this.catTitle);

  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catId);
    }).toList();


    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem (
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
