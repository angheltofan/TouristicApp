import 'package:flutter/material.dart';

class GreatWallOfChinaPage extends StatelessWidget {
  const GreatWallOfChinaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Great Wall Of China")),
      body: const Center(
        child: Text("Great Wall Of China Page"),
      ),
    );
  }
}
