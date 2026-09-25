import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  String gender = 'Male';

  final textcontroller = TextEditingController();
  final participantController = TextEditingController();
  final eventController = TextEditingController();

  bool ischecked = false;
  DateTime? eventDate;
  double fee = 100;

  @override
  void dispose() {
    textcontroller.dispose();
    participantController.dispose();
    eventController.dispose();
    super.dispose();
  }

  Future<void> selectEventDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );

    if (pickedDate != null) {
      setState(() {
        eventDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration Form')),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Gender
              RadioListTile<String>(
                title: const Text('Male'),
                value: 'Male',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),

              RadioListTile<String>(
                title: const Text('Female'),
                value: 'Female',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),

              // Name
              TextField(
                controller: textcontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 10),

              // Checkbox
              CheckboxListTile(
                title: const Text('Accept Terms and Conditions'),
                value: ischecked,
                onChanged: (value) {
                  setState(() {
                    ischecked = value!;
                  });
                },
              ),

              const SizedBox(height: 10),

              // Event Date
              ListTile(
                title: Text(
                  eventDate == null
                      ? 'Select Event Date'
                      : 'Event Date: ${eventDate!.day}/${eventDate!.month}/${eventDate!.year}',
                ),
                trailing: const Icon(Icons.calendar_today),
                onTap: selectEventDate,
              ),

              const SizedBox(height: 10),

              // Participant Name
              TextField(
                controller: participantController,
                decoration: const InputDecoration(
                  labelText: 'Participant Name',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 10),

              // Event Name
              TextField(
                controller: eventController,
                decoration: const InputDecoration(
                  labelText: 'Event Name',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 10),

              // Fee
              Text(
                'Fee: ₹${fee.toInt()}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Slider(
                value: fee,
                min: 100,
                max: 5000,
                divisions: 49,
                label: '₹${fee.toInt()}',
                onChanged: (value) {
                  setState(() {
                    fee = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
