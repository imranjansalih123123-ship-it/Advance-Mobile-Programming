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
      home: const StudentProfileScreen(),
    );
  }
}

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Profile"),
      ),

      // Top-level protection
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // =========================
              // PROFILE HEADER
              // =========================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Row(
                  children: [

                    // Student avatar
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.blue,
                      ),
                    ),

                    const SizedBox(width: 20),

                    // Student name and department
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Ahmad Khan",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                          SizedBox(height: 6),

                          Text(
                            "Computer Science Student",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            "Student ID: 101",
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // =========================
              // PERSONAL INFORMATION
              // =========================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text(
                      "Personal Information",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Email row
                    Row(
                      children: const [
                        Icon(Icons.email),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            "ahmad.khan.student@example.com",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 15),

                    // Phone row
                    Row(
                      children: const [
                        Icon(Icons.phone),
                        SizedBox(width: 12),
                        Text("+93 700 123 456"),
                      ],
                    ),

                    const SizedBox(height: 15),

                    // Location row
                    Row(
                      children: const [
                        Icon(Icons.location_on),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            "Kabul, Afghanistan",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // =========================
              // COURSE INFORMATION
              // =========================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text(
                      "Course Information",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    // RichText
                    const RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "Current Course: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Flutter Development",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      "Semester: 4",
                      style: TextStyle(fontSize: 16),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      "GPA: 3.50",
                      style: TextStyle(fontSize: 16),
                    ),

                    const SizedBox(height: 12),

                    // Long text handled safely
                    const Text(
                      "The student is currently learning Flutter "
                      "development, Dart programming, user interface "
                      "design, state management, navigation, API "
                      "integration, and mobile application development.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // =========================
              // SKILLS
              // =========================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Text(
                      "Skills",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 15),

                    Row(
                      children: [
                        Icon(Icons.code),
                        SizedBox(width: 12),
                        Text("Dart & Flutter"),
                      ],
                    ),

                    SizedBox(height: 12),

                    Row(
                      children: [
                        Icon(Icons.storage),
                        SizedBox(width: 12),
                        Text("Database"),
                      ],
                    ),

                    SizedBox(height: 12),

                    Row(
                      children: [
                        Icon(Icons.web),
                        SizedBox(width: 12),
                        Text("Web Development"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
