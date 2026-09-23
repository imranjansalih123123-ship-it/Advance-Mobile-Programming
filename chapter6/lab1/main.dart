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
      home: const ButtonScreen(),
    );
  }
}

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Lab"),
        actions: [
          // PopupMenuButton
          PopupMenuButton<String>(
            onSelected: (value) {
              print("Selected: $value");
            },
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: "Profile",
                child: Text("Profile"),
              ),
              PopupMenuItem(
                value: "Settings",
                child: Text("Settings"),
              ),
              PopupMenuItem(
                value: "Logout",
                child: Text("Logout"),
              ),
            ],
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // --------------------------------
            // 1. TextButton
            // --------------------------------
            TextButton(
              onPressed: () {
                print("TextButton pressed");
              },
              child: const Text("Text Button"),
            ),

            const SizedBox(height: 15),

            // --------------------------------
            // 2. ElevatedButton
            // --------------------------------
            ElevatedButton(
              onPressed: () {
                print("ElevatedButton pressed");
              },
              child: const Text("Elevated Button"),
            ),

            const SizedBox(height: 15),

            // --------------------------------
            // 3. OutlinedButton
            // --------------------------------
            OutlinedButton(
              onPressed: () {
                print("OutlinedButton pressed");
              },
              child: const Text("Outlined Button"),
            ),

            const SizedBox(height: 15),

            // --------------------------------
            // 4. IconButton with Tooltip
            // --------------------------------
            Tooltip(
              message: "Delete item",
              child: IconButton(
                onPressed: () {
                  print("Delete button pressed");
                },
                icon: const Icon(Icons.delete),
              ),
            ),

            const SizedBox(height: 15),

            // --------------------------------
            // 5. Conditionally disabled button
            // --------------------------------
            ElevatedButton(
              onPressed: isEnabled
                  ? () {
                      print("Conditional button pressed");
                    }
                  : null,
              child: Text(
                isEnabled ? "Enabled Button" : "Disabled Button",
              ),
            ),

            const SizedBox(height: 15),

            // --------------------------------
            // 6. Button styled with styleFrom()
            // --------------------------------
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(18),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                print("Styled button pressed");
              },
              child: const Text("Styled Button"),
            ),

            const SizedBox(height: 15),

            // Enable / Disable button
            OutlinedButton(
              onPressed: () {
                setState(() {
                  isEnabled = !isEnabled;
                });
              },
              child: Text(
                isEnabled ? "Disable Button" : "Enable Button",
              ),
            ),
          ],
        ),
      ),

      // --------------------------------
      // 7. FloatingActionButton
      // --------------------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FAB pressed");
        },
        tooltip: "Add item",
        child: const Icon(Icons.add),
      ),
    );
  }
}
