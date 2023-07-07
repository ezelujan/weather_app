import 'package:flutter/material.dart';
import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('¡Bienvenido!'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Hello',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        bottomNavigationBar: const NavBar(),
      ),
    );
  }
}
