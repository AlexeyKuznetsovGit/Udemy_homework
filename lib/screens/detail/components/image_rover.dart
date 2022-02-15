import 'package:eticon_nasa/models/mars_photo.dart';
import 'package:flutter/material.dart';

class ImageRover extends StatelessWidget {
  const ImageRover({
    Key? key,
    required this.model,
  }) : super(key: key);

  final Photos model;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "${model.imgSrc}",
      child: Container(
          height: MediaQuery.of(context).size.width / 1.5,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            model.imgSrc!,
            fit: BoxFit.cover,
          )),
    );
  }
}
