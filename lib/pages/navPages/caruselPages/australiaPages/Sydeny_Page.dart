import 'package:flutter/material.dart';

class SydenyPage extends StatelessWidget {
  const SydenyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sydney")),
      body: const Center(child: Text("Sydney Page")),
    );
  }
}
