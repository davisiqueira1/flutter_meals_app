import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen(this.category, {super.key});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: const Text(
          "Recipes",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Center(child: Text(category.title)),
    );
  }
}
