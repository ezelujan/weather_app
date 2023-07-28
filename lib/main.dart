import 'package:flutter/material.dart';
import 'widgets/navbar.dart';
import 'temperature/ui/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    const Home(),
    const Text('Favorite'),
    const Text('Search'),
    const Text('Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        extendBody: true,
        body: widgetsChildren[indexTap],
        bottomNavigationBar: NavBar(indexTap: indexTap),
      ),
    );
  }
}
