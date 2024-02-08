import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: Text(
          meal.title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: const Text("Recipe details"),
    );
  }
}
