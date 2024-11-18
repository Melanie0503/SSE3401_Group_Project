import 'package:flutter/material.dart';

class HealingPathwaysScreen extends StatelessWidget {
  const HealingPathwaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Healing Pathways')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Morning Meditation'),
            subtitle: const Text('Start your day with a calming meditation.'),
            trailing: ElevatedButton(
              onPressed: () {
                // Play meditation audio or show guide
              },
              child: const Text('Start'),
            ),
          ),
          ListTile(
            title: const Text('Gratitude Exercise'),
            subtitle: const Text('Practice gratitude to improve well-being.'),
            trailing: ElevatedButton(
              onPressed: () {
                // Show gratitude exercise
              },
              child: const Text('Start'),
            ),
          ),
        ],
      ),
    );
  }
}
