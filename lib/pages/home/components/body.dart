import 'dart:async';

import 'package:eticon_getx/pages/second/second_screen.dart';
import 'package:eticon_getx/project_utils/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  MyController c = Get.put(MyController(), tag: 'first');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<MyController>(
            init: c,
            initState: (_) => print('InitState'),
            dispose: (_) => print('Dispose'),
            builder: (_) {
              Timer(Duration(seconds: 1), () {
                if (_.timeM == "59") {
                  c.incrementTimeH();
                }
                c.incrementTimeM();
              });
              return Text("${_.timeH}:${_.timeM}");
            },
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: Text("Go to second page"),
            onPressed: () {
              Get.to(() => SecondScreen());
            },
          ),
        ],
      ),
    );
  }
}
