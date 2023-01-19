import 'package:chiquinho/colors/palette.dart';
import 'package:chiquinho/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chiquinho App',
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.scaffoldBackground,
      ),
      home: HomePage(),
    );
  }
}
