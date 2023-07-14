import 'package:flutter/material.dart';
import 'widgets/navbar.dart';
import 'temperature/ui/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const Scaffold(
        extendBody: true,
        body: Home(),
        bottomNavigationBar: NavBar(),
      ),
    );
  }
}
