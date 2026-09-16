import 'package:flutter/material.dart';

class formdemo extends StatefulWidget {
  const formdemo({super.key});

  @override
  State<formdemo> createState() => _formdemoState();
}

class _formdemoState extends State<formdemo> {
  final textcontroller = TextEditingController();
  @override
  void dispose() {
    textcontroller.dispose();
    super.dispose();
  }

  void setTextValue() {
    setState(() {
      textcontroller.text = 'Hello World';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text("Form_Demo"),
      ),

      body: Column(
        children: [
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: "Enter Your Name:",
              border: OutlineInputBorder(),
            ),
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: 20),
          Text('Read : ${textcontroller.text}'),
          ElevatedButton(
            onPressed: setTextValue,
            child: const Text('Set Text'),
          ),
        ],
      ),
    );
  }
}
