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
      home: const CourseScreen(),
    );
  }
}

class CourseScreen extends StatelessWidget {
  // Final fields
  final String courseTitle = "Flutter Development";
  final int semester = 4;

  // List of topics
  final List<String> topics = [
    "Dart",
    "Widgets",
    "Layouts",
    "State Management",
    "Navigation",
  ];

  // Selected topic
  final String selectedTopic = "Widgets";

  // Status
  final bool isActive = true;

  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Course Information"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // String interpolation
            Text(
              "Course: $courseTitle",
              style: const TextStyle(fontSize: 24),
            ),

            const SizedBox(height: 10),

            Text(
              "Semester: $semester",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            // Selected value
            Text(
              "Selected Topic: $selectedTopic",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            const Text(
              "Topics:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Display topics
            for (String topic in topics)
              Text("• $topic"),

            const SizedBox(height: 20),

            // Condition
            Text(
              isActive ? "Active" : "Inactive",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
