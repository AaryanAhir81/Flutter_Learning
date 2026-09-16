import 'package:flutter/material.dart';

class CalenderDemo extends StatefulWidget {
  const CalenderDemo({super.key});

  @override
  State<CalenderDemo> createState() => _CalenderDemoState();
}

class _CalenderDemoState extends State<CalenderDemo> {
  DateTime? data;

  Future<void> pickData() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: data ?? DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );

    if (!mounted || picked == null) return;

    setState(() {
      data = picked;
    });
  }

  void setDateValue() {
    setState(() {
      data = DateTime(2024, 1, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final text = data == null
        ? 'No date selected'
        : '${data!.day}/${data!.month}/${data!.year}';

    return Scaffold(
      appBar: AppBar(title: const Text('Calendar Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: const TextStyle(fontSize: 20)),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: pickData,
              child: const Text('Pick a date'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: setDateValue,
                child: const Text('Set date to 1 Jan 2024'),
            ),
          ],
        ),
      ),
    );
  }
}
