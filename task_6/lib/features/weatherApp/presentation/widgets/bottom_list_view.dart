import 'package:flutter/material.dart';
import 'package:task_6/features/weatherApp/data/models/weather_forecast.dart';
import 'package:task_6/features/weatherApp/presentation/widgets/forecast_card.dart';

class BottomListView extends StatelessWidget {
  const BottomListView({Key? key, required this.snapshot}) : super(key: key);
  final AsyncSnapshot<WeatherForecast> snapshot;
  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data?.list;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '7-Day Weather Forecast'.toUpperCase(),
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.black87,
              fontWeight: FontWeight.bold),
        ),
        Container(
          height: 140,
          padding: EdgeInsets.all(16),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                    width: MediaQuery.of(context).size.width / 2.7,
                    height: 160,
                    color: Colors.black87,
                    child: forecastCard(snapshot, index),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 8,
                  ),
              itemCount: snapshot.data!.list!.length),
        )
      ],
    );
  }
}
