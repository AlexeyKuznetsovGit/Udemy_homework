import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NamedScreen extends StatefulWidget {
  @override
  _NamedScreenState createState() => _NamedScreenState();
}

class _NamedScreenState extends State<NamedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Example'),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
      body: Center(child: Text(Get.arguments)),
    );
  }
}
