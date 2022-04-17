import 'package:flutter/material.dart';

class WeatherTile extends StatelessWidget {
  IconData icon;
  String title;
  String subTitle;

  WeatherTile(
      {required this.icon, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.orangeAccent,)
        ],
      ),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600
        ),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0xff9e9e9e)
        ),
      ),
    );
  }
}
