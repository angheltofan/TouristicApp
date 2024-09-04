import 'package:flutter/material.dart';

class BarcelonaPage extends StatelessWidget {
  const BarcelonaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Barcelona")),
      body: const Center(child: Text("Barcelona Page")),
    );
  }
}
