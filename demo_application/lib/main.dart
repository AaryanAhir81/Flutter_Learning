import 'package:flutter/material.dart';
// import 'package:demo_application/controls/sliderexample.dart';
// import 'package:demo_application/controls/calender.dart';
import 'package:demo_application/controls/imagedisplay.dart';

void main() {
  runApp(const LoginScreenRun());
}

class LoginScreenRun extends StatelessWidget {
  const LoginScreenRun({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: ImgDis());
  }
}
