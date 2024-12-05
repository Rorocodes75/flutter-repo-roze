import 'package:flutter/material.dart';
import 'package:flutter_day1_intro/pages/page1.dart';// import the homepage 

// flutter package , very importernt 
// ثابت دايم كذا المين
void main() {
  runApp(const mainApp());
}
class mainApp extends StatelessWidget{ // لازم احط ميثود لانه الكلاس ابسراتك
    const mainApp ({super.key});

@override
// class in flutter = widget , see it on the phone
  Widget build(BuildContext context) {
    // TODO: implement build
     return MaterialApp(home:page1());// هيكل الاب, only one, home where to start 
    }
}


