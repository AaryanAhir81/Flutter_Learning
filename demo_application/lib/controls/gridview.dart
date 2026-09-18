import 'package:flutter/material.dart';

class gridDemo extends StatefulWidget {
  const gridDemo({super.key});

  @override
  State<gridDemo> createState() => _gridDemoState();
}

class _gridDemoState extends State<gridDemo> {
  final topics = ['Topic1', 'Topic2', 'Topic3', 'Topic4', 'Topic5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
          children: [
            for (final topic in topics)
              Card(color: Colors.blue.shade400, child: Text(topic)),
          ],
        ),
      ),
    );
  }
}
