import 'package:edu_test_demo/home_screen.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(
        key: key,
        message: '',
      ),
    );
  }
}
