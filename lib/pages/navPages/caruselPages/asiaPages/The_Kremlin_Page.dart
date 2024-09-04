import 'package:flutter/material.dart';

class TheKremlinPage extends StatelessWidget {
  const TheKremlinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("The Kremlin")),
      body: const Center(child: Text("The Kremlin Page")),
    );
  }
}
