import 'package:flutter/material.dart';

class WeatherItem extends StatelessWidget {
  const WeatherItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
    this.margin = const EdgeInsets.all(0),
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String value;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: margin,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 25,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, .8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 5),
            blurRadius: 100,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 25,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(0, 0, 0, .5),
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
