import 'package:eticon_nasa/models/mars_photo.dart';
import 'package:flutter/material.dart';

class RoverInfo extends StatelessWidget {
  const RoverInfo({
    Key? key,
    required this.model,
  }) : super(key: key);

  final Photos model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
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
            child: Text("Rover Info",
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
                "Name: ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${model.rover!.name}", style: TextStyle(fontSize: 16))
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Launch date: ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${model.rover!.launchDate}", style: TextStyle(fontSize: 16))
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Landing date: ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${model.rover!.landingDate}",
                  style: TextStyle(fontSize: 16))
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Status: ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text("${model.rover!.status}", style: TextStyle(fontSize: 16))
            ],
          ),
        ],
      ),
    );
  }
}
