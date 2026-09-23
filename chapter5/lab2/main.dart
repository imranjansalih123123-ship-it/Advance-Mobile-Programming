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
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const CourseScreen(),
    );
  }
}

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Student data
    String studentName = "Ahmad";
    int semester = 4;
    double gpa = 3.5;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Course Details"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 1. Course title with fontSize, fontWeight and color
            const Text(
              "Flutter Development",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 15),

            // 2. Long description with maxLines and ellipsis
            const Text(
              "Flutter is a framework for building beautiful and "
              "cross-platform applications. It allows developers "
              "to create mobile, web and desktop applications "
              "using a single codebase.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 20),

            // 3. RichText with three TextSpans
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "Flutter ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: "uses ",
                  ),
                  TextSpan(
                    text: "Dart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  TextSpan(
                    text: " to build applications.",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // 4. String interpolation
            Text(
              "Student: $studentName | "
              "Semester: $semester | "
              "GPA: $gpa",
              style: const TextStyle(
                fontSize: 17,
              ),
            ),

            const SizedBox(height: 20),

            // 5. Using theme text style
            Text(
              "Course Information",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
