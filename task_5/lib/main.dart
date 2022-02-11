import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_5/provider/color_provider.dart';
import 'package:task_5/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ColorProvider>(
          create: (context) => ColorProvider(), child: HomeScreen()),
    );
  }
}
