import 'package:flutter/material.dart';

class SupportCommunityScreen extends StatelessWidget {
  const SupportCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Support Group & Community')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Anxiety Support Group'),
            subtitle:
                const Text('Join our community of support for managing anxiety.'),
            trailing: ElevatedButton(
              onPressed: () {
                // Join group action
              },
              child: const Text('Join'),
            ),
          ),
          ListTile(
            title: const Text('Depression Support Group'),
            subtitle: const Text('Find connection and support.'),
            trailing: ElevatedButton(
              onPressed: () {
                // Join group action
              },
              child: const Text('Join'),
            ),
          ),
        ],
      ),
    );
  }
}
