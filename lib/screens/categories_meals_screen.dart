import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});

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
      body: const Center(child: Text("Categories meals screen")),
    );
  }
}
