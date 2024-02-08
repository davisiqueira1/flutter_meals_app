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
        backgroundColor: Colors.blue,
        title: const Text(
          "Lets cook?",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: GridView(
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
