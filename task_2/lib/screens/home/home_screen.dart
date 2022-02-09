import 'package:flutter/material.dart';
import 'package:task_2/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Counter"),
        centerTitle: true,
      ),
      backgroundColor: Colors.indigoAccent,
      body: Body(),
    );
  }
}
