import 'package:flutter/material.dart';

class CrisisHotlineScreen extends StatelessWidget {
  const CrisisHotlineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crisis Hotline')),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Mental Health Hotline'),
            subtitle: Text('Call: 123-456-789'),
          ),
          ListTile(
            title: Text('Suicide Prevention Line'),
            subtitle: Text('Call: 987-654-321'),
          ),
          ListTile(
            title: Text('Substance Abuse Hotline'),
            subtitle: Text('Call: 555-555-555'),
          ),
        ],
      ),
    );
  }
}
