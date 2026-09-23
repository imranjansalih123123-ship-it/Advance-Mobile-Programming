import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ContainerScreen(),
    );
  }
}

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Example"),
      ),

      // Main content is wrapped in SafeArea
      body: SafeArea(
        child: Column(
          children: [

            // Container 1
            Container(
              width: 300,
              height: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Container 1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),

            // Container 2
            Container(
              width: 250,
              height: 150,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(25),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Container 2",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),

            // Container 3
            Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text(
                "Container 3",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
