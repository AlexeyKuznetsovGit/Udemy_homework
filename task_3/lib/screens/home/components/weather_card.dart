import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    Key? key,
    required this.text,
    required this.degrees,
  }) : super(key: key);

  final String text;
  final int degrees;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(color: Colors.white24),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Text(text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w300)),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$degrees °F ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w300)),
              Icon(Icons.wb_sunny, color: Colors.white, size: 30),
            ],
          )
        ],
      ),
    );
  }
}
