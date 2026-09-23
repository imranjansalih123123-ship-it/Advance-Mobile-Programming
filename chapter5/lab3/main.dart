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
      home: const StudentScreen(),
    );
  }
}

class StudentScreen extends StatelessWidget {
  const StudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Information"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          // Main axis of Column = vertical
          mainAxisAlignment: MainAxisAlignment.center,

          // Cross axis of Column = horizontal
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              "Student Name: Ahmad",
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 15),

            const Text(
              "Student ID: 101",
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 15),

            const Text(
              "Department: Computer Science",
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 25),

            // Row containing icon and email
            Row(
              // Main axis of Row = horizontal
              mainAxisAlignment: MainAxisAlignment.center,

              // Cross axis of Row = vertical
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const Icon(
                  Icons.email,
                  size: 25,
                ),

                const SizedBox(width: 10),

                const Text(
                  "ahmad@example.com",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
