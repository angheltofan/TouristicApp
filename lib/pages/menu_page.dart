import 'package:flutter/material.dart';
import 'package:flutter_application/pages/menuPages/about_page.dart';
import 'package:flutter_application/pages/menuPages/contact_page.dart';
import 'package:flutter_application/pages/menuPages/privacyPolicy_page.dart';
import 'package:flutter_application/pages/menuPages/settings_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 235, 235),
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: const Color.fromARGB(255, 125, 101, 130),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {
                // Navighează la pagina de setări
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Privacy policy'),
              leading: const Icon(Icons.privacy_tip),
              onTap: () {
                // Handle navigation or action for Politica de confidențialitate
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PrivacypolicyPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Contact'),
              leading: const Icon(Icons.contact_mail),
              onTap: () {
                // Handle navigation or action for Contact
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactPage()),
                );
              },
            ),
            ListTile(
              title: const Text('About'),
              leading: const Icon(Icons.info),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
                // Handle navigation or action for Despre aplicație
              },
            ),
          ],
        ),
      ),
    );
  }
}
