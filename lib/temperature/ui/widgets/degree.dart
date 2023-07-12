import 'package:flutter/material.dart';

class Degree extends StatelessWidget {
  const Degree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(
          Icons.wb_sunny_outlined,
          size: 50,
          color: Colors.orange,
        ),
        Text(
          '27°',
          style: TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        ),
        Text(
          'New York, USA',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(0, 0, 0, .5),
          ),
        ),
      ],
    );
  }
}
