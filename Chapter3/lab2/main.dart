void main() {
  // 1. Create a List of five course names
  List<String> courses = [
    "Programming",
    "Database",
    "Software Engineering",
    "Data Structures",
    "Web Development"
  ];

  // 2. Print the first and last items
  print("First course: ${courses.first}");
  print("Last course: ${courses.last}");

  // 3. Add a new course
  courses.add("Flutter");
  print("After adding Flutter: $courses");

  // 4. Remove one course
  courses.remove("Database");
  print("After removing Database: $courses");

  // 5. Check whether Flutter exists
  if (courses.contains("Flutter")) {
    print("Flutter exists in the course list.");
  } else {
    print("Flutter does not exist.");
  }

  // 6. Iterate through the List with for-in
  print("\nCourses:");

  for (String course in courses) {
    print(course);
  }

  // 7. Create a List of marks
  List<double> marks = [80, 75, 90, 85, 70];

  // Calculate the average
  double total = 0;

  for (double mark in marks) {
    total += mark;
  }

  double average = total / marks.length;

  print("\nMarks: $marks");
  print("Average: $average");
}
