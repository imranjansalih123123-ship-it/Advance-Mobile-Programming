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
