import 'package:flutter/material.dart';
import 'package:flutter_day7/pages/homepage.dart';

int age = 9; // global data 
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}
