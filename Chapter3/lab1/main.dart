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
