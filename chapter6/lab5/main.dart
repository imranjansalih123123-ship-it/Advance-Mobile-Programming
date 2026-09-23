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
      home: const InformationScreen(),
    );
  }
}

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Information"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: OrientationBuilder(
          builder: (context, orientation) {

            // Two information cards
            final List<Widget> cards = [
              InformationCard(
                title: "Student Information",
                icon: Icons.person,
                description:
                    "This card contains information about the student, including name, ID, department and semester.",
                buttonText: "View Student",
              ),

              InformationCard(
                title: "Course Information",
                icon: Icons.school,
                description:
                    "This card contains information about the current course, including course name, instructor and credits.",
                buttonText: "View Course",
              ),
            ];

            // Portrait → Column
            if (orientation == Orientation.portrait) {
              return Column(
                children: [
                  Expanded(child: cards[0]),
                  const SizedBox(height: 16),
                  Expanded(child: cards[1]),
                ],
              );
            }

            // Landscape → Row
            return Row(
              children: [
                Expanded(child: cards[0]),
                const SizedBox(width: 16),
                Expanded(child: cards[1]),
              ],
            );
          },
        ),
      ),
    );
  }
}

// Information Card Widget
class InformationCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String description;
  final String buttonText;

  const InformationCard({
    super.key,
    required this.title,
    required this.icon,
    required this.description,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon + title
            Row(
              children: [
                Icon(icon, size: 35),
                const SizedBox(width: 12),

                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // Description
            Expanded(
              child: Text(
                description,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            const SizedBox(height: 10),

            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print("$buttonText pressed");
                },
                child: Text(buttonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
