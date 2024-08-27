import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/backButtonCustom.dart';

class AmericaPage extends StatelessWidget {
  const AmericaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 235, 235),
      body: Stack(
        children: [
          Center(
            child: Text(
              'America Page',
            ),
          ),
          Positioned(
            top: 40, // Poziționează butonul mai sus pe ecran
            left: 20, // Poziționează butonul spre stânga
            child: CustomBackButton(), // Butonul custom
          ),
        ],
      ),
    );
  }
}
