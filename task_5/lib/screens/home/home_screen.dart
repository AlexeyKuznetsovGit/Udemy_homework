import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_5/provider/color_provider.dart';
import 'package:task_5/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorProvider _state = Provider.of<ColorProvider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Homework Provider",
              style: TextStyle(
                color: _state.giveColorText,
              )),
          centerTitle: true,
        ),
        body: Body());
  }
}
