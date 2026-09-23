class Student {
  final String name;
  final int id;
  final int semester;
  final String department;
  final Map<String, String> address;

  // Named constructor
  Student.fromMap(Map<String, dynamic> data)
      : name = data["name"],
        id = data["id"],
        semester = data["semester"],
        department = data["department"],
        address = Map<String, String>.from(data["address"]);

  void displayInfo() {
    print("Name: $name");
    print("ID: $id");
    print("Semester: $semester");
    print("Department: $department");
    print("Address: $address");
  }
}

void main() {
  // 1. Create a Map
  Map<String, dynamic> studentMap = {
    "name": "Ahmad",
    "id": 101,
    "semester": 4,
    "department": "Computer Science",

    // 6. Nested address Map
    "address": {
      "city": "Kabul",
      "country": "Afghanistan",
    },
  };

  // 2. Read values
  print("Name: ${studentMap["name"]}");
  print("Department: ${studentMap["department"]}");

  // Update a value
  studentMap["semester"] = 5;
  print("Updated Semester: ${studentMap["semester"]}");

  // 3. Add a new key
  studentMap["gpa"] = 3.5;
  print("Added GPA: ${studentMap["gpa"]}");

  // 4. Remove a key
  studentMap.remove("gpa");
  print("After removing GPA: $studentMap");

  // 5. Iterate over entries
  print("\nStudent Map:");

  for (var entry in studentMap.entries) {
    print("${entry.key}: ${entry.value}");
  }

  // Access nested address
  print("\nCity: ${studentMap["address"]["city"]}");

  // 7. Convert Map into Student object
  final Student student = Student.fromMap(studentMap);

  print("\nStudent Object:");
  student.displayInfo();
}
