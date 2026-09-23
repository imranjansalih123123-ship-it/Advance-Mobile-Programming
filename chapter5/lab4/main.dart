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
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Profile"),
      ),

      body: Container(
        // Margin = space outside the card
        margin: const EdgeInsets.all(20),

        // Padding = space inside the card
        padding: const EdgeInsets.all(20),

        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Column(
          children: [

            // First Row:
            // Avatar on the left + student information on the right
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // Avatar
                const CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.person,
                    size: 45,
                  ),
                ),

                const SizedBox(width: 20),

                // Student information
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Ahmad Khan",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        "Student ID: 101",
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Computer Science Department",
                      ),

                      SizedBox(height: 5),

                      // Long text
                      Text(
                        "Flutter and mobile application development student",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // Second Row:
            // Phone + Email
            Row(
              children: [

                const Icon(Icons.phone),

                const SizedBox(width: 8),

                const Expanded(
                  child: Text(
                    "+93 700 123 456",
                  ),
                ),

                const Icon(Icons.email),

                const SizedBox(width: 8),

                const Expanded(
                  child: Text(
                    "ahmad.student@example.com",
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
