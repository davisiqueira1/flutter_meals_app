import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favorite_meals_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedScreenIndex = 0;

  final List<Map<String, Object>> _screens = [
    {"title": "Categories List", "screen": const CategoriesScreen()},
    {"title": "My Favorite Meals", "screen": const FavoriteMealsScreen()}
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: Text(
          _screens[_selectedScreenIndex]["title"] as String,
          style: const TextStyle(fontSize: 24),
        ),
      ),
      body: _screens[_selectedScreenIndex]["screen"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        backgroundColor: Theme.of(context).colorScheme.primary,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}

        // bottom: TabBar(
        //   labelColor: Colors.white,
        //   unselectedLabelColor: Colors.white,
        //   indicatorColor: Theme.of(context).colorScheme.secondary,
        //   tabs: const <Widget>[
        //     Tab(
        //       icon: Icon(Icons.category),
        //       text: "Categories",
        //     ),
        //     Tab(
        //       icon: Icon(Icons.favorite),
        //       text: "Favorites",
        //     ),
        //   ],
        // ),
      // body: const TabBarView(
      //   children: <Widget>[
      //     CategoriesScreen(),
      //     FavoriteMealsScreen(),
      //   ],
      // ),