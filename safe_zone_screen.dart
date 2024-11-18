import 'package:flutter/material.dart';

class SafeZoneScreen extends StatelessWidget {
  const SafeZoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Emergency Safe Zone')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Safe Zone', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text('Take a deep breath. You are safe here.'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add calming exercise or music here
              },
              child: const Text('Play Calming Sound'),
            ),
          ],
        ),
      ),
    );
  }
}
