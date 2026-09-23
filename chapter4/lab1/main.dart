import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TopicScreen(),
    );
  }
}

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Two Lists
    final List<String> basicTopics = [
      "Dart",
      "Flutter Widgets",
      "Layouts",
    ];

    final List<String> advancedTopics = [
      "State Management",
      "Navigation",
      "API Integration",
    ];

    // 2. Spread operator (...)
    final List<String> allTopics = [
      ...basicTopics,
      ...advancedTopics,
    ];

    // 3. Nullable List and null-aware spread (...?)
    final List<String>? optionalTopics = null;

    // 4. Collection-if
    final bool isAdmin = true;

    // 5. Collection-for
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Development"),
      ),

      body: Column(
        children: [
          // Collection-for
          for (String topic in allTopics)
            Text("Topic: $topic"),

          // Nullable spread
          ...?optionalTopics,

          // Collection-if
          if (isAdmin)
            const Text(
              "Admin Menu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
        ],
      ),
    );
  }
}
