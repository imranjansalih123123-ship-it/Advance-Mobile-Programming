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
