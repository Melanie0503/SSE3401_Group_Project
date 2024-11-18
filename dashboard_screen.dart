import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F3FC),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(61, 104, 58, 183),
        elevation: 0,
        title: const Text(
          'I Feel U Bro Dashboard',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            _buildDashboardButton(
              context,
              icon: Icons.favorite,
              label: "Daily Emotional Check-ins",
              color: Colors.purple.shade100,
              route: '/emotion_check_in',
            ),
            const SizedBox(height: 16),
            _buildDashboardButton(
              context,
              icon: Icons.call,
              label: "Crisis Hotline",
              color: Colors.pink.shade100,
              route: '/crisis_hotline',
            ),
            const SizedBox(height: 16),
            _buildDashboardButton(
              context,
              icon: Icons.security,
              label: "Emergency Safe Zone",
              color: Colors.blue.shade100,
              route: '/safe_zone',
            ),
            const SizedBox(height: 16),
            _buildDashboardButton(
              context,
              icon: Icons.group,
              label: "Support Group and Community",
              color: Colors.green.shade100,
              route: '/support_community',
            ),
            const SizedBox(height: 16),
            _buildDashboardButton(
              context,
              icon: Icons.self_improvement,
              label: "Daily Healing Pathways",
              color: Colors.orange.shade100,
              route: '/healing_pathways',
            ),
          ],
        ),
      ),

    );
  }

  Widget _buildDashboardButton(BuildContext context, {required IconData icon, required String label, required Color color, required String route}) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.deepPurple, size: 28),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
