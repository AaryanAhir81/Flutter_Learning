import 'package:flutter/material.dart';
import 'package:todo_app/screen/todo_screen.dart';

void main() {
  runApp(TodoWidget());
}

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TodoScreen(), debugShowCheckedModeBanner: false,
     
    );
  }
}
