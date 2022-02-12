import 'package:flutter/material.dart';
import 'package:task_6/features/utilities/forecast_util.dart';
import 'package:task_6/features/weatherApp/data/models/weather_forecast.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.snapshot}) : super(key: key);

  final AsyncSnapshot<WeatherForecast> snapshot;

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data?.list;
    var pressure = forecastList![0].pressure * 0.750062;
    var humidity = forecastList[0].humidity;
    var wind = forecastList[0].speed;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Util.getItem(Icons.thermostat, pressure.round(), 'mm Hg'),
          Util.getItem(Icons.wb_cloudy, humidity, '%'),
          Util.getItem(Icons.access_alarm, wind.toInt(), 'm/s'),
        ],
      ),
    );
  }
}
