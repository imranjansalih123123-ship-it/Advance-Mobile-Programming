import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InfoScreen(),
    );
  }
}

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  String infoText = "Loading...";

  @override
  void initState() {
    super.initState();
    loadInfo();
  }

  // Load the text file
  Future<void> loadInfo() async {
    final String text =
        await rootBundle.loadString("assets/data/info.txt");

    setState(() {
      infoText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asset Text"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: SingleChildScrollView(
          child: Text(
            infoText,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
