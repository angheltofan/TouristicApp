import 'package:flutter/material.dart';
import 'package:flutter_application/pages/menu_page.dart';
import 'package:flutter_application/widgets/menu_button.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 235, 235),
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 20),
        child: MenuButton(
          onPressed: () {
            // Navigate to the MenuPage when the button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MenuPage()),
            );
          },
          color: Colors.black87,
        ),
      ),
    );
  }
}
