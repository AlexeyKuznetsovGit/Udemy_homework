import 'package:eticon_nasa/models/mars_photo.dart';
import 'package:eticon_nasa/screens/detail/components/camera_info.dart';
import 'package:eticon_nasa/screens/detail/components/image_rover.dart';
import 'package:eticon_nasa/screens/detail/components/rover_info.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.model,
  }) : super(key: key);

  final Photos model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageRover(model: model),
        SizedBox(
          height: 30,
        ),
        CameraInfo(model: model),
        SizedBox(
          height: 20,
        ),
        RoverInfo(model: model)
      ],
    );
  }
}
