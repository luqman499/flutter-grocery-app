import 'package:flutter/material.dart';
import 'screens/bottom_Nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

//work on code to understand
