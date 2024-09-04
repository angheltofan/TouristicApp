import 'package:flutter/material.dart';

class NewYork extends StatelessWidget {
  const NewYork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("New York City")),
      body: const Center(child: Text("New York City Page")),
    );
  }
}
