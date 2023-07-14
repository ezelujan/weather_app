import 'package:flutter/material.dart';
import 'package:weather_app/temperature/ui/widgets/degree.dart';
import '../widgets/weather_info.dart';
import '../widgets/coming_forecast.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 50),
          child: const Degree(),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: const WeatherInfo(),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: const ComingForecast(),
        ),
      ],
    );
  }
}
