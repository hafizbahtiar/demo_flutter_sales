import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = 'settings';
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          ListTile(
            title: const Text('About'),
            leading: const Icon(Icons.info),
            onTap: () {
              // Navigate to the about screen
              Navigator.pushNamed(context, 'about');
            },
          ),
          const Divider(), // Add a divider between items
          // Add more ListTile items for other settings...
        ],
      ),
    );
  }
}
