import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RegistrationForm(),
    );
  }
}



class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final emailController = TextEditingController();

  bool ce = false;
  bool it = false;

  String? gender;
  String? division;

  bool cpp = false;
  bool java = false;
  bool python = false;
  bool javascript = false;

  bool gujarati = false;
  bool hindi = false;
  bool english = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Registration"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Student Name
            const Text(
              "Student Name",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: "Enter student name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Branch
            const Text("Branch", style: TextStyle(fontWeight: FontWeight.bold)),

            Row(
              children: [
                Checkbox(
                  value: ce,
                  onChanged: (value) {
                    setState(() {
                      ce = value!;
                    });
                  },
                ),
                const Text("CE"),

                Checkbox(
                  value: it,
                  onChanged: (value) {
                    setState(() {
                      it = value!;
                    });
                  },
                ),
                const Text("IT"),
              ],
            ),

            // Gender
            const Text("Gender", style: TextStyle(fontWeight: FontWeight.bold)),

            Row(
              children: [
                Radio<String>(
                  value: "Male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                const Text("Male"),

                Radio<String>(
                  value: "Female",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
                const Text("Female"),
              ],
            ),

            const SizedBox(height: 10),

            // Division
            const Text(
              "Division",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            DropdownButtonFormField<String>(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              hint: const Text("Select Division"),
              value: division,
              items: ["A", "B", "C", "D", "E", "F", "G"]
                  .map(
                    (item) => DropdownMenuItem(value: item, child: Text(item)),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  division = value;
                });
              },
            ),

            const SizedBox(height: 20),

            // Age
            const Text("Age", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter age",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Email
            const Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Enter email",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Programming Languages
            const Text(
              "Programming Languages Efficiency",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            CheckboxListTile(
              title: const Text("C++"),
              value: cpp,
              onChanged: (value) {
                setState(() {
                  cpp = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Java"),
              value: java,
              onChanged: (value) {
                setState(() {
                  java = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Python"),
              value: python,
              onChanged: (value) {
                setState(() {
                  python = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("JavaScript"),
              value: javascript,
              onChanged: (value) {
                setState(() {
                  javascript = value!;
                });
              },
            ),

            const SizedBox(height: 10),

            // Language Known
            const Text(
              "Language Known",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            CheckboxListTile(
              title: const Text("Gujarati"),
              value: gujarati,
              onChanged: (value) {
                setState(() {
                  gujarati = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Hindi"),
              value: hindi,
              onChanged: (value) {
                setState(() {
                  hindi = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("English"),
              value: english,
              onChanged: (value) {
                setState(() {
                  english = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            // REGISTER BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Programming languages list
                  List<String> programmingLanguages = [];

                  if (cpp) programmingLanguages.add("C++");
                  if (java) programmingLanguages.add("Java");
                  if (python) programmingLanguages.add("Python");
                  if (javascript) programmingLanguages.add("JavaScript");

                  // Known languages list
                  List<String> knownLanguages = [];

                  if (gujarati) knownLanguages.add("Gujarati");
                  if (hindi) knownLanguages.add("Hindi");
                  if (english) knownLanguages.add("English");

                  // Branch list
                  List<String> branches = [];

                  if (ce) branches.add("CE");
                  if (it) branches.add("IT");

                  // Go to next page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        name: nameController.text,
                        branches: branches,
                        gender: gender ?? "Not Selected",
                        division: division ?? "Not Selected",
                        age: ageController.text,
                        email: emailController.text,
                        programmingLanguages: programmingLanguages,
                        knownLanguages: knownLanguages,
                      ),
                    ),
                  );
                },

                child: const Text("REGISTER", style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= RESULT PAGE =================

class ResultPage extends StatelessWidget {
  final String name;
  final List<String> branches;
  final String gender;
  final String division;
  final String age;
  final String email;
  final List<String> programmingLanguages;
  final List<String> knownLanguages;

  const ResultPage({
    super.key,
    required this.name,
    required this.branches,
    required this.gender,
    required this.division,
    required this.age,
    required this.email,
    required this.programmingLanguages,
    required this.knownLanguages,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Information"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Card(
          elevation: 5,

          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Registration Details",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                const Divider(),

                Text("Student Name: $name"),

                const SizedBox(height: 10),

                Text(
                  "Branch: ${branches.isEmpty ? "Not Selected" : branches.join(", ")}",
                ),

                const SizedBox(height: 10),

                Text("Gender: $gender"),

                const SizedBox(height: 10),

                Text("Division: $division"),

                const SizedBox(height: 10),

                Text("Age: $age"),

                const SizedBox(height: 10),

                Text("Email: $email"),

                const SizedBox(height: 10),

                Text(
                  "Programming Languages: "
                  "${programmingLanguages.isEmpty ? "Not Selected" : programmingLanguages.join(", ")}",
                ),

                const SizedBox(height: 10),

                Text(
                  "Languages Known: "
                  "${knownLanguages.isEmpty ? "Not Selected" : knownLanguages.join(", ")}",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
