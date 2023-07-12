import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 70),
        child: const Column(
          children: [
            // sin espacio entre los textos
            Text(
              '27°',
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.w600),
            ),
            Text(
              'New York, USA',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                // color black con transparencia
                color: Color.fromRGBO(0, 0, 0, .5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
