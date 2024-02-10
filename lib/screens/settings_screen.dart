import 'package:flutter/material.dart';
import 'package:meals_app/components/main_drawer.dart';
import 'package:meals_app/models/settings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen(this.onSettingsChanged, this.settings, {super.key});

  final void Function(Settings) onSettingsChanged;
  final Settings settings;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late Settings settings;

  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    void Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(widget.settings);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MainDrawer(),
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          title: const Text(
            "Configuration",
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Configuration",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _createSwitch(
                    "Gluten-free",
                    "Only displays gluten-free meals!",
                    widget.settings.isGlutenFree,
                    (value) =>
                        setState(() => widget.settings.isGlutenFree = value),
                  ),
                  _createSwitch(
                    "Lactose-free",
                    "Only displays lactose-free meals!",
                    widget.settings.isLactoseFree,
                    (value) =>
                        setState(() => widget.settings.isLactoseFree = value),
                  ),
                  _createSwitch(
                    "Vegan",
                    "Only displays vegan meals!",
                    widget.settings.isVegan,
                    (value) => setState(() => widget.settings.isVegan = value),
                  ),
                  _createSwitch(
                    "Vegetarian",
                    "Only displays vegetarian meals!",
                    widget.settings.isVegetarian,
                    (value) =>
                        setState(() => widget.settings.isVegetarian = value),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
