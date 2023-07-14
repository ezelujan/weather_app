import 'package:flutter/material.dart';
import 'coming_forecast_item.dart';

class ComingForecast extends StatelessWidget {
  const ComingForecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: const Text(
            'Coming 7 days',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ComingForecastItem(
          displayWidth: displayWidth,
          day: 'Monday',
          condition: 'Clear',
          max: 28,
          min: 20,
        ),
        ComingForecastItem(
          displayWidth: displayWidth,
          day: 'Tuesday',
          condition: 'Partially cloudy',
          max: 26,
          min: 18,
        ),
        ComingForecastItem(
          displayWidth: displayWidth,
          day: 'Wednesday',
          condition: 'Overcast',
          max: 28,
          min: 20,
        ),
        ComingForecastItem(
          displayWidth: displayWidth,
          day: 'Thursday',
          condition: 'Rain',
          max: 28,
          min: 20,
        ),
        ComingForecastItem(
          displayWidth: displayWidth,
          day: 'Friday',
          condition: 'Rain, Overcast',
          max: 28,
          min: 20,
        ),
        ComingForecastItem(
          displayWidth: displayWidth,
          day: 'Saturday',
          condition: 'Rain, Partially cloudy',
          max: 28,
          min: 20,
        ),
        ComingForecastItem(
          displayWidth: displayWidth,
          day: 'Sunday',
          condition: 'Clear',
          max: 28,
          min: 20,
        ),
      ],
    );
  }
}
