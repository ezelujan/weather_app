import 'package:flutter/material.dart';

class ComingForecastItem extends StatelessWidget {
  const ComingForecastItem({
    Key? key,
    required this.displayWidth,
    required this.day,
    required this.condition,
    required this.max,
    required this.min,
  }) : super(key: key);

  final double displayWidth;
  final String day;
  final String condition;
  final int max;
  final int min;

  @override
  Widget build(BuildContext context) {
    final IconData icon;
    final MaterialColor colorIcon;

    switch (condition) {
      case 'Clear':
        icon = Icons.wb_sunny;
        colorIcon = Colors.orange;
        break;
      case 'Partially cloudy':
        icon = Icons.wb_cloudy_outlined;
        colorIcon = Colors.grey;
        break;
      case 'Overcast':
        icon = Icons.wb_cloudy;
        colorIcon = Colors.grey;
        break;
      case 'Rain':
        icon = Icons.water_drop;
        colorIcon = Colors.blue;
        break;
      case 'Rain, Overcast':
        icon = Icons.cloudy_snowing;
        colorIcon = Colors.blueGrey;
        break;
      case 'Rain, Partially cloudy':
        icon = Icons.wb_cloudy_outlined;
        colorIcon = Colors.blue;
        break;
      default:
        colorIcon = Colors.orange;
        icon = Icons.wb_sunny;
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            style: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, .5),
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              SizedBox(width: displayWidth * .07),
              Icon(
                icon,
                color: colorIcon,
              ),
              SizedBox(width: displayWidth * .07),
              Text(
                '$max°',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: displayWidth * .07),
              Text(
                '$min°',
                style: const TextStyle(
                  color: Color.fromRGBO(0, 0, 0, .5),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
