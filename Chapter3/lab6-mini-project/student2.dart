import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Student {
  final String name;
  final List<double> marks;

  Student(this.name, this.marks);

  double calculateTotal() {
    double total = 0;

    for (double mark in marks) {
      total += mark;
    }

    return total;
  }

  double calculateAverage() {
    final double total = calculateTotal();
    return total / marks.length;
  }

  String getResult() {
    return calculateAverage() >= 50 ? "Pass" : "Fail";
  }

  String getGrade() {
    final double average = calculateAverage();

    if (average >= 90) {
      return "A";
    } else if (average >= 80) {
      return "B";
    } else if (average >= 70) {
      return "C";
    } else if (average >= 60) {
      return "D";
    } else {
      return "F";
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Student student = Student(
      "Ahmad",
      [85, 78, 92, 88, 76],
    );

    final double total = student.calculateTotal();
    final double average = student.calculateAverage();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Student Result"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${student.name}"),
            Text("Marks: ${student.marks}"),
            Text("Total: $total"),
            Text("Average: $average"),
            Text("Result: ${student.getResult()}"),
            Text("Grade: ${student.getGrade()}"),
          ],
        ),
      ),
    );
  }
}
