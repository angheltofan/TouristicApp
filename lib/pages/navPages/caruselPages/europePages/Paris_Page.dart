import 'package:flutter/material.dart';

class ParisPage extends StatelessWidget {
  const ParisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Paris")),
      body: const Center(child: Text("Paris Page")),
    );
  }
}
