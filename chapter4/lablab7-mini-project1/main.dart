mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

class Student with Logger {
  final String name;
  final int id;
  final String department;

  // Private internal state
  final List<Course> _registeredCourses = [];

  // Named parameters
  Student({
    required this.name,
    required this.id,
    required this.department,
  });

  // Named constructor
  Student.guest({
    required this.name,
    required this.id,
  }) : department = "Guest";

  // Add course
  void registerCourse(Course course) {
    _registeredCourses.add(course);
    log("$name registered for ${course.title}");
  }

  // Getter to access courses safely
  List<Course> get registeredCourses => List.unmodifiable(_registeredCourses);

  // Arrow function for simple calculation
  int get totalCourses => _registeredCourses.length;
}


class Course {
  final String code;
  final String title;
  final int credits;

  Course({
    required this.code,
    required this.title,
    required this.credits,
  });

  // Arrow function
  int get courseHours => credits * 15;
}


class Registration with Logger {
  final Student student;
  final List<Course> courses;

  // Flexible metadata
  final Map<String, dynamic> metadata;

  Registration({
    required this.student,
    required this.courses,
    this.metadata = const {},
  });

  void showRegistration() {
    log("Registration for ${student.name}");

    print("Student: ${student.name}");
    print("Department: ${student.department}");

    print("\nCourses:");
    for (Course course in courses) {
      print(
        "${course.code} - ${course.title} "
        "(${course.credits} credits)",
      );
    }

    print("\nMetadata:");
    for (var entry in metadata.entries) {
      print("${entry.key}: ${entry.value}");
    }
  }
}


void main() {
  // Required courses
  final List<Course> requiredCourses = [
    Course(
      code: "CS101",
      title: "Programming",
      credits: 3,
    ),
    Course(
      code: "CS102",
      title: "Data Structures",
      credits: 3,
    ),
  ];

  // Elective courses
  final List<Course> electiveCourses = [
    Course(
      code: "FL101",
      title: "Flutter Development",
      credits: 3,
    ),
    Course(
      code: "AI101",
      title: "Artificial Intelligence",
      credits: 4,
    ),
  ];

  // Spread operator combines two lists
  final List<Course> allCourses = [
    ...requiredCourses,
    ...electiveCourses,
  ];

  // Create Student and use cascade for configuration
  final Student student = Student(
    name: "Ahmad",
    id: 101,
    department: "Computer Science",
  )
    ..registerCourse(requiredCourses[0])
    ..registerCourse(requiredCourses[1])
    ..registerCourse(electiveCourses[0]);

  // Create registration
  final Registration registration = Registration(
    student: student,
    courses: allCourses,
    metadata: {
      "registrationDate": "2026-09-23",
      "status": "Active",
      "semester": 4,
      "isFullTime": true,
    },
  );

  registration.showRegistration();

  print("\nTotal registered courses: ${student.totalCourses}");

  print(
    "Flutter course hours: ${electiveCourses[0].courseHours}",
  );
}
