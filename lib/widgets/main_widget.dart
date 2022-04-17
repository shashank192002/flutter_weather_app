import 'package:flutter/material.dart';
import 'weather_tile.dart';

class MainWidget extends StatelessWidget{
  final String location;
  final double temp;
  final double tempMin;
  final double tempMax;
  final String weather;
  final int humidity;
  final double windspeed;

  MainWidget({
    required this.location,
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.weather,
    required this.humidity,
    required this.windspeed,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,
          color: Colors.redAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${location.toString()}",
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                ),

              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                child: Text(
                  "${temp.toInt().toString()}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900
                  ),
                ),
              ),
              Text(
                "High of ${tempMax.toInt().toString()}. low of ${tempMin.toInt().toString()}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600
                ),
              )
            ],
          ),
        ),

        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ListView(
              children: [
                WeatherTile(icon: Icons.thermostat_outlined, title: "Temperature", subTitle: "${temp.toInt().toString()}"),
                WeatherTile(icon: Icons.filter_drama_outlined, title: "Weather", subTitle: "${weather.toString()}"),
                WeatherTile(icon: Icons.wb_sunny, title: "Humidity", subTitle: "${humidity.toString()}"),
                WeatherTile(icon: Icons.waves_outlined, title: "Wind Speed", subTitle: "${windspeed.toInt().toString()}"),
              ],
            ),
          ),
        )
      ],
    );
  }
}