import 'package:eticon_nasa/models/mars_photo.dart';
import 'package:eticon_nasa/screens/detail/components/body.dart';
import 'package:flutter/material.dart';

class DetailRoverPage extends StatelessWidget {
  final Photos model;
  const DetailRoverPage({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("${model.camera!.name!} ${model.id}"),
      ),
      body: Body(model: model),
    );
  }
}
