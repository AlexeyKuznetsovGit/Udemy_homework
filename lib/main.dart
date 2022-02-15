import 'package:eticon_nasa/common/constants.dart';
import 'package:eticon_nasa/screens/home/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:eticon_api/eticon_api.dart';

void main() {
  Api.init(baseUrl: Constants.BASE_URL);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreenProvider(),
    );
  }
}
