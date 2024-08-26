import 'package:flutter/material.dart';
//import 'package:flutter_application/pages/home_page.dart';
//import 'package:flutter_application/pages/navPages/profile_page.dart'; // Import the existing ProfilePage

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: const Color.fromARGB(255, 125, 101, 130),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: const Text('Setări'),
              leading: const Icon(Icons.settings),
              onTap: () {
                // Handle navigation or action for Setări
              },
            ),
            ListTile(
              title: const Text('Politica de confidențialitate'),
              leading: const Icon(Icons.privacy_tip),
              onTap: () {
                // Handle navigation or action for Politica de confidențialitate
              },
            ),
            ListTile(
              title: const Text('Contact'),
              leading: const Icon(Icons.contact_mail),
              onTap: () {
                // Handle navigation or action for Contact
              },
            ),
            ListTile(
              title: const Text('Despre aplicație'),
              leading: const Icon(Icons.info),
              onTap: () {
                // Handle navigation or action for Despre aplicație
              },
            ),
          ],
        ),
      ),
    );
  }
}
