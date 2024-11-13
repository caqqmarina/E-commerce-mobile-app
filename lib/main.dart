import 'package:flutter/material.dart';
import 'package:ecommerce_app/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slime Palace',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(
          secondary: const Color.fromARGB(255, 252, 190, 229),
        ),
      ),
      home: MyHomePage(),
    );
  }
}
