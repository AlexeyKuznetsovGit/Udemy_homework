import 'package:eticon_getx/project_utils/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  MyController c = Get.find(tag: 'first');
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<MyController>(
        init: c,
        initState: (_) => print('InitState'),
        dispose: (_) => print('Dispose'),
        builder: (_) {
          return Text(
              "${_.timeH}:${_.timeM}"); //Text("${_.counter.toString()}");
        },
      ),
    );
  }
}
