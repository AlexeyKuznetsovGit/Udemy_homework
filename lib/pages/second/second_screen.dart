import 'package:eticon_getx/pages/second/components/body.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RXTimer"),
      ),
      body: Body(),
    );
  }
}
