import 'package:flutter/material.dart';

class Degree extends StatelessWidget {
  const Degree({Key? key}) : super(key: key);

  final int degree = 23;
  final String location = 'New York, USA';

  @override
  Widget build(BuildContext context) {
    final color = degree < 18 ? Colors.blue : Colors.orange;

    final IconData icon = degree < 5
        ? Icons.ac_unit
        : degree < 18
            ? Icons.wb_cloudy_outlined
            : Icons.wb_sunny_outlined;

    final degreeColumn = Column(
      children: [
        Icon(
          icon,
          color: color,
          size: 50,
        ),
        Text(
          '$degree°',
          style: const TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        ),
        Text(
          location,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, .5),
          ),
        ),
      ],
    );

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(.2),
                blurRadius: 100,
                spreadRadius: 40,
              ),
            ],
          ),
        ),
        degreeColumn,
      ],
    );
  }
}
