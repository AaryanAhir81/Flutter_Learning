import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter App',
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 33, 191, 243),
          leading: const Icon(Icons.menu),
        ),
        body: const Center(child: Text('Hello World! How are you')),
      ),
    );
  }
}
