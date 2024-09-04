import 'package:flutter/material.dart';

class CapeTown extends StatelessWidget {
  const CapeTown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cape Town")),
      body: const Center(child: Text("Cape Town Page")),
    );
  }
}
