import 'package:flutter/material.dart';
import 'package:task_3/screens/home/components/bottom.dart';
import 'package:task_3/screens/home/components/info_today.dart';
import 'package:task_3/screens/home/components/search.dart';
import 'package:task_3/screens/home/components/tittle.dart';
import 'package:task_3/screens/home/components/wind_speed.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Tittle(),
          SizedBox(
            height: 30,
          ),
          Search(),
          SizedBox(
            height: 50,
          ),
          Text("Murmansk Oblast, RU",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w200)),
          SizedBox(
            height: 5,
          ),
          Text(
            "Friday, Mar 20, 2020",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: 50,
          ),
          InfoToday(),
          SizedBox(
            height: 50,
          ),
          WindSpeed(),
          SizedBox(
            height: 50,
          ),
          Text("7-DAY WEATHER FORECAST",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w200)),
          SizedBox(
            height: 20,
          ),
          Bottom(),
        ],
      ),
    );
  }
}
