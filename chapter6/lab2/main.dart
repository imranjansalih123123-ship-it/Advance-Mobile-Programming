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
      home: const ImageIconScreen(),
    );
  }
}

class ImageIconScreen extends StatelessWidget {
  const ImageIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images & Icons"),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // --------------------------------
            // 1. Local image
            // --------------------------------
            const Text(
              "Local Image",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Image.asset(
              "assets/images/student.jpg",
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 30),

            // --------------------------------
            // 2. Remote image with BoxFit.contain
            // --------------------------------
            const Text(
              "Remote Image",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Image.network(
              "https://picsum.photos/400/200",
              width: double.infinity,
              height: 200,
              fit: BoxFit.contain,

              // Error handling
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  height: 200,
                  child: Center(
                    child: Text(
                      "Failed to load image",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 30),

            // --------------------------------
            // 3. Row with Icon + Text
            // --------------------------------
            Row(
              children: const [
                Icon(
                  Icons.school,
                  size: 30,
                ),

                SizedBox(width: 10),

                Text(
                  "Computer Science Student",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // --------------------------------
            // 4. BoxFit.cover example
            // --------------------------------
            const Text(
              "BoxFit.cover",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Image.network(
              "https://picsum.photos/500/300",
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            // --------------------------------
            // 5. BoxFit.contain example
            // --------------------------------
            const Text(
              "BoxFit.contain",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Image.network(
              "https://picsum.photos/500/300",
              width: double.infinity,
              height: 150,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
