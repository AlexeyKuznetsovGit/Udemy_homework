import 'package:eticon_nasa/models/mars_photo.dart';
import 'package:flutter/material.dart';

class RoverCard extends StatelessWidget {
  final Photos model;
  const RoverCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 130,
        padding: EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Hero(
              tag: "${model.imgSrc}",
              child: CircleAvatar(
                  radius: 50, backgroundImage: NetworkImage(model.imgSrc!)),
            ),
            SizedBox(
              width: 5,
            ),
            Text(model.camera!.name!, style: TextStyle(fontSize: 16)),
            SizedBox(
              width: 5,
            ),
            Text("${model.id!}", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
