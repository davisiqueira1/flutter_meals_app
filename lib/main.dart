import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lets cook?",
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: theme.textTheme.copyWith(
          titleLarge: const TextStyle(
            fontSize: 20,
            fontFamily: "RobotoCondensed",
            color: Colors.black,
          ),
          labelLarge: const TextStyle(
            fontFamily: "Raleway",
          ),
        ),
      ),
      home: const CategoriesScreen(),
    );
  }
}
