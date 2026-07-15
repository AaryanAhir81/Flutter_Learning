import 'package:flutter/material.dart';
import 'package:demo_application/stopwatch/stopwatch.dart';

void main() {
  runApp(const stopwatchRUn());
}

class stopwatchRUn extends StatelessWidget {
  const stopwatchRUn({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StopwatchExample(),
    );
  }
}
