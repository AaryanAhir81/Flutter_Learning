import 'package:flutter/material.dart';
import 'package:register_app/resource/imagestring.dart';

class imageexample extends StatefulWidget {
  const imageexample({super.key});

  @override
  State<imageexample> createState() => _imageexampleState();
}

class _imageexampleState extends State<imageexample> {
  Widget ScrollDips() {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: i2.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(i2[index]),
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: ScrollDips()));
  }
}
