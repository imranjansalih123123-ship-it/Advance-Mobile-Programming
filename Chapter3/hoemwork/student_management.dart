class Student {
  final String name;
  final int id;
  final int semester;
  final List<double> marks;

  // Constructor
  Student({
    required this.name,
    required this.id,
    required this.semester,
    required this.marks,
  });

  // Calculate average
  double calculateAverage() {
    double total = 0;

    for (double mark in marks) {
      total += mark;
    }

    return total / marks.length;
  }

  // Return Pass or Fail
  String getResult() {
    final double average = calculateAverage();

    if (average >= 50) {
      return "Pass";
    } else {
      return "Fail";
    }
  }

  // Assign grade using conditions
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

void main() {
  // const value
  const String university = "Kabul University";

  // Five Student objects
  final Student student1 = Student(
    name: "Ahmad",
    id: 101,
    semester: 4,
    marks: [85, 90, 78, 88, 92],
  );

  final Student student2 = Student(
    name: "Ali",
    id: 102,
    semester: 3,
    marks: [70, 75, 68, 72, 80],
  );

  final Student student3 = Student(
    name: "Sara",
    id: 103,
    semester: 5,
    marks: [95, 92, 88, 96, 90],
  );

  final Student student4 = Student(
    name: "Maryam",
    id: 104,
    semester: 2,
    marks: [55, 60, 48, 52, 58],
  );

  final Student student5 = Student(
    name: "Omar",
    id: 105,
    semester: 1,
    marks: [40, 45, 35, 48, 42],
  );

  // List<Student>
  final List<Student> students = [
    student1,
    student2,
    student3,
    student4,
    student5,
  ];

  print("University: $university");
  print("Student Management System");
  print("==========================");

  // Loop through every student
  for (final Student student in students) {
    final double average = student.calculateAverage();
    final String result = student.getResult();
    final String grade = student.getGrade();

    print("Name: ${student.name}");
    print("ID: ${student.id}");
    print("Semester: ${student.semester}");
    print("Marks: ${student.marks}");
    print("Average: ${average.toStringAsFixed(2)}");
    print("Result: $result");
    print("Grade: $grade");
    print("--------------------------");
  }
}
