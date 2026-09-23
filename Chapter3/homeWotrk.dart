// FIRST LAB

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




//  SECOND LAB

void main() {
  // 1. Define a numeric mark
  double mark = 78;

  print("Mark: $mark");

  // 2. Determine Pass/Fail
  if (mark >= 50) {
    print("Result: Pass");
  } else {
    print("Result: Fail");
  }

  // 3. Determine letter grade
  if (mark >= 90) {
    print("Grade: A");
  } else if (mark >= 80) {
    print("Grade: B");
  } else if (mark >= 70) {
    print("Grade: C");
  } else if (mark >= 60) {
    print("Grade: D");
  } else {
    print("Grade: F");
  }

  // 4. Print numbers 1–20 using a for loop
  print("\nNumbers 1–20:");

  for (int i = 1; i <= 20; i++) {
    print(i);
  }

  // 5. Print only even numbers
  print("\nEven numbers:");

  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // 6. Repeat a task using a while loop
  print("\nNumbers using while loop:");

  int number = 1;

  while (number <= 10) {
    print(number);
    number++;
  }

  // 7. Ternary expression for a simple status
  String status = mark >= 50 ? "Passed" : "Failed";

  print("\nStatus: $status");
}




// THIRD LAB
void main() {
  // 1. Define a numeric mark
  double mark = 78;

  print("Mark: $mark");

  // 2. Determine Pass/Fail
  if (mark >= 50) {
    print("Result: Pass");
  } else {
    print("Result: Fail");
  }

  // 3. Determine letter grade
  if (mark >= 90) {
    print("Grade: A");
  } else if (mark >= 80) {
    print("Grade: B");
  } else if (mark >= 70) {
    print("Grade: C");
  } else if (mark >= 60) {
    print("Grade: D");
  } else {
    print("Grade: F");
  }

  // 4. Print numbers 1–20 using a for loop
  print("\nNumbers 1–20:");

  for (int i = 1; i <= 20; i++) {
    print(i);
  }

  // 5. Print only even numbers
  print("\nEven numbers:");

  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // 6. Repeat a task using a while loop
  print("\nNumbers using while loop:");

  int number = 1;

  while (number <= 10) {
    print(number);
    number++;
  }

  // 7. Ternary expression for a simple status
  String status = mark >= 50 ? "Passed" : "Failed";

  print("\nStatus: $status");
}




// FOURTH LAB

class Student {
  // Fields
  String name;
  String department;
  int semester;

  // Constructor
  Student(this.name, this.department, this.semester);

  // Method
  void displayInfo() {
    print("Name: $name");
    print("Department: $department");
    print("Semester: $semester");
    print("-------------------");
  }
}

void main() {
  // Create three Student objects
  Student student1 = Student("Ahmad", "Computer Science", 4);
  Student student2 = Student("Fatima", "Information Technology", 3);
  Student student3 = Student("Ali", "Software Engineering", 5);

  // Store students in a List<Student>
  List<Student> students = [
    student1,
    student2,
    student3
  ];

  // Loop through the List
  for (Student student in students) {
    student.displayInfo();
  }
}



// FIFTH LAB
class Student {
  String name;
  String department;
  int semester;

  // Constructor
  Student(this.name, this.department, this.semester);

  // Method
  void displayInfo() {
    print('$name | $department | $semester');
  }
}



// SIXTH LAB

