import 'package:flutter/material.dart';
import 'package:meals_app/components/meal_item.dart';
import 'package:meals_app/models/meal.dart';

class FavoriteMealsScreen extends StatelessWidget {
  const FavoriteMealsScreen(this.favoriteMeals, {super.key});

  final List<Meal> favoriteMeals;

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text("No meals have been marked as favorites!"),
      );
    }

    return ListView.builder(
      itemCount: favoriteMeals.length,
      itemBuilder: (context, index) {
        return MealItem(meal: favoriteMeals[index]);
      },
    );
  }
}
