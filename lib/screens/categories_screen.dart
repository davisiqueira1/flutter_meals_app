import 'package:flutter/material.dart';
import 'package:meals_app/components/category_item.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: const Text(
          "Lets cook?",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).canvasColor,
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2, // (or just 1.5)
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: dummyCategories
            .map(
              (Category c) => CategoryItem(category: c),
            )
            .toList(),
      ),
    );
  }
}
