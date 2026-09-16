import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchExample extends StatefulWidget {
  final String name;
  final String email;
  const StopwatchExample({super.key, required this.name, required this.email});

  @override
  State<StopwatchExample> createState() => _StopwatchExampleState();
}

class _StopwatchExampleState extends State<StopwatchExample> {
  int seconds = 0;
  Timer? timer;
  bool isRunning = false;

  final List<int> laps = [];

  void _onTick(Timer timer) {
    setState(() {
      seconds++;
    });
  }

  void _startTimer() {
    timer?.cancel();

    setState(() {
      seconds = 0;
      laps.clear();
      isRunning = true;
    });

    timer = Timer.periodic(const Duration(seconds: 1), _onTick);
  }

  void _pauseTimer() {
    timer?.cancel();

    setState(() {
      isRunning = false;
    });
  }

  void _resumeTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), _onTick);

    setState(() {
      isRunning = true;
    });
  }

  void _stopTimer() {
    timer?.cancel();

    setState(() {
      isRunning = false;
      seconds = 0;
    });
  }

  void _lap() {
    setState(() {
      laps.add(seconds);
    });
  }

  void _clear() {
    setState(() {
      laps.clear();
      seconds = 0;
    });
  }

  String _secondToText() {
    return seconds == 1 ? "1 second" : "$seconds seconds";
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.name), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),

            Text(
              _secondToText(),
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: isRunning ? null : _startTimer,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Start"),
                ),

                ElevatedButton(
                  onPressed: isRunning ? _pauseTimer : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Pause"),
                ),

                ElevatedButton(
                  onPressed: !isRunning && seconds > 0 ? _resumeTimer : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Resume"),
                ),

                ElevatedButton(
                  onPressed: seconds > 0 ? _stopTimer : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Stop"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: isRunning ? _lap : null,
                  child: const Text("Lap"),
                ),
                ElevatedButton(onPressed: _clear, child: const Text("Clear")),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Laps",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: laps.isEmpty
                  ? const Center(child: Text("No laps recorded"))
                  : ListView.builder(
                      itemCount: laps.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: Text("Lap ${index + 1}"),
                            trailing: Text("${laps[index]} sec"),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
