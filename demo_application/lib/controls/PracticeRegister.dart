import 'package:flutter/material.dart';

class RegisterP extends StatefulWidget {
  const RegisterP({super.key});

  @override
  State<RegisterP> createState() => _RegisterPState();
}

class _RegisterPState extends State<RegisterP> {
  String name = '';
  String email = '';
  String password = '';
  String cpassword = '';
  String? Gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 219, 3, 3),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: _buildRegisterForm(),
      ),
    );
  }

  Widget _buildRegisterForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Create Account',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 25),

        TextField(
          decoration: const InputDecoration(
            labelText: 'Name',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            name = value;
          },
        ),

        const SizedBox(height: 15),

        TextField(
          decoration: const InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            email = value;
          },
        ),

        const SizedBox(height: 15),

        TextField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            password = value;
          },
        ),

        const SizedBox(height: 15),

        TextField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Confirm Password',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            cpassword = value;
          },
        ),

        const SizedBox(height: 20),

        const Text(
          'Gender',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),

        RadioListTile<String>(
          title: const Text('Male'),
          value: 'Male',
          groupValue: Gender,
          onChanged: (value) {
            setState(() {
              Gender = value;
            });
          },
        ),

        RadioListTile<String>(
          title: const Text('Female'),
          value: 'Female',
          groupValue: Gender,
          onChanged: (value) {
            setState(() {
              Gender = value;
            });
          },
        ),

        RadioListTile<String>(
          title: const Text('Other'),
          value: 'Other',
          groupValue: Gender,
          onChanged: (value) {
            setState(() {
              Gender = value;
            });
          },
        ),

        const SizedBox(height: 15),

        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              print('Name: $name');
              print('Email: $email');
              print('Password: $password');
              print('Confirm Password: $cpassword');
              print('Gender: $Gender');
            },
            
            child: const Text('Register'),
            
          ),
        ),
      ],
    );
  }
}
