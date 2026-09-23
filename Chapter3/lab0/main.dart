void main() {
  // Variables
  String studentName = "Ahmad";
  int age = 20;
  int semester = 4;
  double gpa = 3.45;
  bool isActive = true;

  // Print all values
  print("Student Name: $studentName");
  print("Age: $age");
  print("Semester: $semester");
  print("GPA: $gpa");
  print("Active: $isActive");

  // Arithmetic operations
  int sum = age + semester;
  int difference = age - semester;
  int multiplication = age * semester;
  double division = age / semester;

  print("Addition: $sum");
  print("Subtraction: $difference");
  print("Multiplication: $multiplication");
  print("Division: $division");

  // Comparison operators
  print(age >= 18);       // true
  print(gpa >= 3.0);      // true
  print(semester == 4);   // true

  // Logical operators
  print(age >= 18 && isActive); // true
  print(gpa >= 3.5 || isActive); // true
  print(!isActive);             // false

  // Type inference
  var university = "Kabul University";
  var scholarship = true;

  print("University: $university");
  print("Scholarship: $scholarship");
}
