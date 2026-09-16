import 'package:count_app/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CountApp());
}

class CountApp extends StatelessWidget {
  const CountApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}