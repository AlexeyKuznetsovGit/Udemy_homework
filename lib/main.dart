import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:start_get_eticon/screens/named_screen/named_screen.dart';
import 'package:start_get_eticon/screens/no_named_screen/no_named_screen.dart';

//В данном приложении содержится два экрана. Вам необходимо добавить в это приложение Get.
// И согласно комментариям в NoNamedScreen выполнить задания

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: '/', page: () => NoNamedScreen()),
        GetPage(name: '/second', page: () => NamedScreen()),
      ],
      home: NoNamedScreen(),
    );
  }
}
