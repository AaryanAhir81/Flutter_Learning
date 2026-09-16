import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator App")),
      body: Column(
        children: [
          // Display
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(20),
              child: const Text("0", style: TextStyle(fontSize: 50)),
            ),
          ),

          // Buttons
          Expanded(
            flex: 5,
            child: GridView.count(
              crossAxisCount: 4,
              padding: const EdgeInsets.all(10),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                // Row 1
                ElevatedButton(onPressed: () {}, child: const Text("7")),
                ElevatedButton(onPressed: () {}, child: const Text("8")),
                ElevatedButton(onPressed: () {}, child: const Text("9")),
                ElevatedButton(onPressed: () {}, child: const Text("÷")),

                // Row 2
                ElevatedButton(onPressed: () {}, child: const Text("4")),
                ElevatedButton(onPressed: () {}, child: const Text("5")),
                ElevatedButton(onPressed: () {}, child: const Text("6")),
                ElevatedButton(onPressed: () {}, child: const Text("×")),

                ElevatedButton(onPressed: () {}, child: const Text("1")),
                ElevatedButton(onPressed: () {}, child: const Text("2")),
                ElevatedButton(onPressed: () {}, child: const Text("3")),
                ElevatedButton(onPressed: () {}, child: const Text("-")),

                ElevatedButton(onPressed: () {}, child: const Text("0")),
                ElevatedButton(onPressed: () {}, child: const Text(".")),
                ElevatedButton(onPressed: () {}, child: const Text("C")),
                ElevatedButton(onPressed: () {}, child: const Text("+")),

                ElevatedButton(onPressed: () {}, child: const Text("+/-")),
                ElevatedButton(onPressed: () {}, child: const Text("0")),
                ElevatedButton(onPressed: () {}, child: const Text(".")),
                ElevatedButton(onPressed: () {}, child: const Text("=")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
