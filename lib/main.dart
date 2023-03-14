import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blockchain Clone',
      theme: lightTheme,
      home: const HomeScreen(),
    );
  }
}
