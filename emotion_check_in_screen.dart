import 'package:flutter/material.dart';

class EmotionCheckInScreen extends StatelessWidget {
  const EmotionCheckInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Emotional Check-ins')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('How are you feeling today?', style: TextStyle(fontSize: 24)),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.sentiment_satisfied, size: 50),
                SizedBox(width: 16),
                Icon(Icons.sentiment_neutral, size: 50),
                SizedBox(width: 16),
                Icon(Icons.sentiment_dissatisfied, size: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
