import 'package:flutter/material.dart';
import 'package:flutter_day8/pages/home_page.dart';
import 'package:flutter_day8/service/api.dart';

void main() {
   //Api().getData();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage()
    );
  }
}
