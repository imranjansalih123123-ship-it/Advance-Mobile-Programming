class Student {
  // Student data
  final String name;
  final List<double> marks;

  // Constructor
  Student(this.name, this.marks);

  // Calculate total
  double calculateTotal() {
    double total = 0;

    for (double mark in marks) {
      total += mark;
    }

    return total;
  }

  // Calculate average
  double calculateAverage() {
    final double total = calculateTotal();
    return total / marks.length;
  }

  // Determine Pass/Fail
  String getResult() {
    final double average = calculateAverage();

    if (average >= 50) {
      return "Pass";
    } else {
      return "Fail";
    }
  }

  // Determine letter grade
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
  // Create a Student object
  final Student student = Student(
    "Ahmad",
    [85, 78, 92, 88, 76],
  );

  // Store calculated values
  final double total = student.calculateTotal();
  final double average = student.calculateAverage();
  final String result = student.getResult();
  final String grade = student.getGrade();

  // Display all results using string interpolation
  print("Student Name: ${student.name}");
  print("Marks: ${student.marks}");
  print("Total: $total");
  print("Average: $average");
  print("Result: $result");
  print("Grade: $grade");
}
