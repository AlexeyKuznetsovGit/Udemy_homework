import 'package:flutter/material.dart';
import 'package:task_6/features/weatherApp/presentation/pages/location_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationScreen(),
    );
  }
}
