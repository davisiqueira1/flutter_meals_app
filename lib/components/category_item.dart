import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({required this.category, super.key});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [
          category.color.withOpacity(0.8),
          category.color,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Text(
        category.title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
