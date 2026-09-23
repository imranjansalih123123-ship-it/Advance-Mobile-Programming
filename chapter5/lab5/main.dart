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
      home: const OverflowScreen(),
    );
  }
}

class OverflowScreen extends StatelessWidget {
  const OverflowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Overflow Example"),
      ),

      // SingleChildScrollView allows the whole page to scroll
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "1. Row Overflow",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // FIXED ROW
            Row(
              children: [
                const Icon(Icons.person),

                const SizedBox(width: 10),

                Expanded(
                  child: Text(
                    "This is a very long student name and "
                    "description that could cause horizontal "
                    "overflow on a small screen.",
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "2. Tall Column",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // Tall Column
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Student 1"),
                SizedBox(height: 20),
                Text("Student 2"),
                SizedBox(height: 20),
                Text("Student 3"),
                SizedBox(height: 20),
                Text("Student 4"),
                SizedBox(height: 20),
                Text("Student 5"),
                SizedBox(height: 20),
                Text("Student 6"),
                SizedBox(height: 20),
                Text("Student 7"),
                SizedBox(height: 20),
                Text("Student 8"),
                SizedBox(height: 20),
                Text("Student 9"),
                SizedBox(height: 20),
                Text("Student 10"),
                SizedBox(height: 20),
                Text("Student 11"),
                SizedBox(height: 20),
                Text("Student 12"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
