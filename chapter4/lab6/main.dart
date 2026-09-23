class StudentProfile {
  String name = "";
  String department = "";
  int semester = 1;
  double gpa = 0.0;

  void displayProfile() {
    print("Name: $name");
    print("Department: $department");
    print("Semester: $semester");
    print("GPA: $gpa");
  }
}

void main() {
  // 1. Normal statements

  final StudentProfile student1 = StudentProfile();

  student1.name = "Ahmad";
  student1.department = "Computer Science";
  student1.semester = 4;
  student1.gpa = 3.5;

  student1.displayProfile();



  // 2. Same thing using cascade
  final StudentProfile student2 = StudentProfile()
    ..name = "Ali"
    ..department = "Software Engineering"
    ..semester = 5
    ..gpa = 3.8
    ..displayProfile();
}
