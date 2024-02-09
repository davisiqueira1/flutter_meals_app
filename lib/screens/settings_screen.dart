import 'package:flutter/material.dart';
import 'package:meals_app/components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: const Text(
          "Configuration",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: const Center(
        child: Text("Configuration"),
      ),
    );
  }
}
