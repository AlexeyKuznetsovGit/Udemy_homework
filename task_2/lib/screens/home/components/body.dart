import 'package:flutter/material.dart';
import 'package:task_2/screens/home/components/counter.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Tap \"-\" to decrement",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Counter(),
          Text(
            "Tap \"+\" to increment",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
