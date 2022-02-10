import 'package:flutter/material.dart';
import 'package:task_3/screens/home/components/weather_card.dart';

class Bottom extends StatelessWidget {
  const Bottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          WeatherCard(text: "Friday", degrees: 6),
          SizedBox(
            width: 5,
          ),
          WeatherCard(text: "Saturday", degrees: 5),
          SizedBox(
            width: 5,
          ),
          WeatherCard(text: "Sunday", degrees: 22),
          SizedBox(
            width: 5,
          ),
          WeatherCard(text: "Monday", degrees: 24),
          SizedBox(
            width: 5,
          ),
          WeatherCard(text: "Tuesday", degrees: 28),
          SizedBox(
            width: 5,
          ),
          WeatherCard(text: "Wednesday", degrees: 29),
          SizedBox(
            width: 5,
          ),
          WeatherCard(text: "Thursday", degrees: 8),
        ],
      ),
    );
  }
}
