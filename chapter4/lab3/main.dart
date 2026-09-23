import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 1. Normal function

int add(int a, int b) {
  return a + b;
}


// 2. Fat-arrow function
int multiply(int a, int b) => a * b;


// 3. Function assigned to variable
final Function calculator = add;


// 4. Function passed to another function

void calculate(int a, int b, int Function(int, int) operation) {
  print("Result: ${operation(a, b)}");
}


// 5. Named callback function
void buttonMessage() {
  print("Button was pressed!");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 6. map() to transform a List
    final List<int> numbers = [1, 2, 3, 4, 5];

    final List<int> doubledNumbers = numbers.map((number) {
      return number * 2;
    }).toList();

    print("Original: $numbers");
    print("Doubled: $doubledNumbers");

    
    // 7. Anonymous function
    final List<int> squaredNumbers = numbers.map(
      (number) => number * number,
    ).toList();

    print("Squared: $squaredNumbers");

    // Function passed to another function
    calculate(5, 3, add);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Functions Example"),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Named function as callback
              ElevatedButton(
                onPressed: buttonMessage,
                child: const Text("Named Function"),
              ),

              const SizedBox(height: 20),

              // Anonymous function as callback
              ElevatedButton(
                onPressed: () {
                  print("Anonymous function was called!");
                },
                child: const Text("Anonymous Function"),
              ),

              const SizedBox(height: 20),

              Text(
                "Doubled: $doubledNumbers",
              ),

              Text(
                "Squared: $squaredNumbers",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
