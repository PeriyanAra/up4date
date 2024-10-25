import 'package:flutter/material.dart';
import 'package:up4date/app/app_theme_mode/app_theme_mode.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              context.read<AppThemeMode>().updateThemeMode(ThemeMode.light);
            },
            child: const Text('Light'),
          ),
          TextButton(
            onPressed: () {
              context.read<AppThemeMode>().updateThemeMode(ThemeMode.dark);
            },
            child: const Text('Dark'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Go to settings'),
          ),
        ],
      ),
    );
  }
}
