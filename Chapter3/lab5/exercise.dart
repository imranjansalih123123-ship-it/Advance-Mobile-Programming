import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Student Course"),
        ),

        body: CoursePage(),
      ),
    ),
  );
}

class CoursePage extends StatelessWidget {
  // Dart: final fields
  final String courseTitle = "Flutter Development";
  final int semester = 4;

  // Dart: List<String>
  final List<String> topics = [
    "Dart",
    "Widgets",
    "Layouts",
    "Navigation",
  ];

  // Dart: selected value
  final String selectedTopic = "Widgets";

  // Dart: boolean
  final bool isActive = true;

  CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Dart: string interpolation
        Text("Course: $courseTitle"),

        Text("Semester: $semester"),

        Text("Selected Topic: $selectedTopic"),

        // Dart: condition / ternary operator
        Text(
          isActive ? "Active" : "Inactive",
        ),

        // Dart: for-in loop
        for (String topic in topics)
          Text(topic),
      ],
    );
  }
}
