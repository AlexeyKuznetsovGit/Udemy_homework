import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:start_get_eticon/global_widgets/project_button.dart';

class NoNamedScreen extends StatefulWidget {
  @override
  _NoNamedScreenState createState() => _NoNamedScreenState();
}

class _NoNamedScreenState extends State<NoNamedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ProjectButton(
                title: 'Именнованый переход',
                onPressed: () {
                  Get.toNamed("/second",
                      arguments:
                          'Информация получена из\nпредыдущего экрана, с помощью Get');
                },
              ),
              SizedBox(
                height: 15,
              ),
              ProjectButton(
                title: 'SnackBar',
                onPressed: () {
                  Get.snackbar("Ого, что-то случилось",
                      "Данный снэк бар помогает отображать важную информацию поверх экрана",
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.white,
                      isDismissible: true,
                      duration: Duration(seconds: 3),
                      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                      boxShadows: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                        )
                      ]);
                },
              ),
              SizedBox(
                height: 15,
              ),
              ProjectButton(
                title: 'Dialog',
                onPressed: () {
                  Get.dialog(Center(child: CupertinoActivityIndicator()),
                      barrierColor: Colors.white.withOpacity(0.3),
                      transitionDuration: Duration(seconds: 1));
                  Timer(Duration(seconds: 1), () => Get.back());
                },
              ),
              SizedBox(
                height: 15,
              ),
              ProjectButton(
                title: 'BottomSheet',
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      alignment: Alignment.center,
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Тут тоже может быть полезная информация"),
                          TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("Понятно",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                )),
                          )
                        ],
                      ),
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                    barrierColor: Colors.red.withOpacity(0.5),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
