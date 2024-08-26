import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/app_LargeText.dart';
import 'package:flutter_application/widgets/menu_button.dart'; // Import the MenuButton
import 'package:flutter_application/pages/menu_page.dart'; // Import the MenuPage

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 235, 235),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: MenuButton(
              onPressed: () {
                // Navigate to the MenuPage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPage()),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: AppLargetext(
              text: "Where do \nyou want to go?",
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
