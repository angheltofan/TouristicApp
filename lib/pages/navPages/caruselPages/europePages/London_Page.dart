import 'package:flutter/material.dart';

class LondonPage extends StatelessWidget {
  const LondonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("London")),
      body: const Center(child: Text("London Page")),
    );
  }
}
