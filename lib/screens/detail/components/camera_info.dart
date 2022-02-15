import 'package:eticon_nasa/models/mars_photo.dart';
import 'package:flutter/material.dart';

class CameraInfo extends StatelessWidget {
  const CameraInfo({
    Key? key,
    required this.model,
  }) : super(key: key);

  final Photos model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(left: 10, right: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text("Camera Info",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Id: ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${model.camera!.id}", style: TextStyle(fontSize: 16))
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Full name: ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${model.camera!.fullName}", style: TextStyle(fontSize: 16))
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Rover id: ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${model.rover!.id}", style: TextStyle(fontSize: 16))
            ],
          )
        ],
      ),
    );
  }
}
