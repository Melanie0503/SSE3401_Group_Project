import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F3FC), // Light purple background
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(61, 104, 58, 183),
        title: const Text('Your Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Add settings functionality here
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'lib/assets/profile.png'), // Replace with actual image path
              ),
              const SizedBox(height: 16),
              // Name and Job Title
              const Text(
                "Squiward",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const Text(
                "Male",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              // Email Field
              buildProfileField(
                label: "Your Email",
                value: "squidward999@gmail.com",
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 10),
              // Phone Number Field
              buildProfileField(
                label: "Phone Number",
                value: "013-5652435",
                icon: Icons.phone_outlined,
              ),
              const SizedBox(height: 10),
              // Website Field
              const SizedBox(height: 10),
              // Password Field
              buildProfileField(
                label: "Password",
                value: "**********",
                icon: Icons.lock_outline,
                isPassword: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget to build each profile field
  Widget buildProfileField({
    required String label,
    required String value,
    required IconData icon,
    bool isPassword = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
              Icon(icon, color: Colors.grey),
            ],
          ),
        ),
      ],
    );
  }
}
