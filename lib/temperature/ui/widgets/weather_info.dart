import 'package:flutter/material.dart';
import './weather_item.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WeatherItem(
              icon: Icons.air,
              title: 'Wind',
              value: '7 km/h',
              margin: EdgeInsets.only(right: 10, bottom: 10),
            ),
            WeatherItem(
              icon: Icons.wb_sunny_outlined,
              title: 'Indes UV',
              value: '0.002',
              margin: EdgeInsets.only(bottom: 10),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WeatherItem(
              icon: Icons.thermostat_outlined,
              title: 'Temperature',
              value: '27°',
              margin: EdgeInsets.only(right: 10),
            ),
            WeatherItem(
              icon: Icons.water,
              title: 'Humidity',
              value: '64%',
            ),
          ],
        ),
      ],
    );
  }
}
