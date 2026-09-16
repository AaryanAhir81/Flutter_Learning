import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double value = 20;

  void updateslider() {
    setState(() {
      value = 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: value,
              min: 0,
              max: 100,
              divisions: 10,
              label: value.round().toString(),
              onChanged: (double newValue) {
                setState(() {
                  value = newValue;
                });
              },
            ),

            Text(
              'Value: ${value.round()}',
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: updateslider,
              child: const Text('Set value to 50'),
            ),
          ],
        ),
      ),
    );
  }
}