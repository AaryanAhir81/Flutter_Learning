import 'package:flutter/material.dart';
import 'package:register_app/controls/RegistrationForm.dart';
import 'package:register_app/controls/image.dart';

class AllDemo extends StatefulWidget {
  const AllDemo({super.key});

  @override
  State<AllDemo> createState() => _AllDemoState();
}

class _AllDemoState extends State<AllDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.message_sharp), text: 'Messages'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: RegistrationForm()),
            Center(child: imageexample()),
          ],
        ),
      ),
    );
  }
}
