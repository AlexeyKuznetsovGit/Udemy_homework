import 'package:flutter/material.dart';
import 'package:task_6/features/weatherApp/data/api/weather_api.dart';
import 'package:task_6/features/weatherApp/data/models/weather_forecast.dart';
import 'package:task_6/features/weatherApp/presentation/pages/city_screen.dart';
import 'package:task_6/features/weatherApp/presentation/widgets/bottom_list_view.dart';
import 'package:task_6/features/weatherApp/presentation/widgets/city_view.dart';
import 'package:task_6/features/weatherApp/presentation/widgets/detail_view.dart';
import 'package:task_6/features/weatherApp/presentation/widgets/temp_view.dart';

class WeatherForecastScreen extends StatefulWidget {
  final locationWeather;
  const WeatherForecastScreen({Key? key, this.locationWeather})
      : super(key: key);

  @override
  _WeatherForecastScreenState createState() => _WeatherForecastScreenState();
}

class _WeatherForecastScreenState extends State<WeatherForecastScreen> {
  late Future<WeatherForecast> forecastObject;
  late String _cityName;

  @override
  void initState() {
    super.initState();
    if (widget.locationWeather != null) {
      forecastObject = Future.value(widget.locationWeather);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text("Weather forecast"),
        centerTitle: true,
        leading: GestureDetector(
            child: Icon(Icons.my_location),
            onTap: () {
              setState(() {
                forecastObject = WeatherApi().fetchWeatherForecast();
              });
            }),
        actions: [
          GestureDetector(
            child: Icon(Icons.location_city),
            onTap: () async {
              var tappedName = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return CityScreen();
              }));
              if (tappedName != null) {
                setState(() {
                  _cityName = tappedName;
                  forecastObject = WeatherApi()
                      .fetchWeatherForecast(city: _cityName, isCity: true);
                });
              }
            },
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: FutureBuilder<WeatherForecast>(
              future: forecastObject,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      CityView(snapshot: snapshot),
                      SizedBox(
                        height: 50,
                      ),
                      TempView(snapshot: snapshot),
                      SizedBox(
                        height: 50,
                      ),
                      DetailView(snapshot: snapshot),
                      SizedBox(
                        height: 50,
                      ),
                      BottomListView(snapshot: snapshot),
                    ],
                  );
                } else {
                  return Center(
                    child: Text(
                      'City not found\nPlease, enter correct city',
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
