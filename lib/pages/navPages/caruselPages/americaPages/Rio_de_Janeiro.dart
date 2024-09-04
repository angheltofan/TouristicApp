import 'package:flutter/material.dart';

class RioDeJaneiro extends StatelessWidget {
  const RioDeJaneiro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rio de Janeiro")),
      body: const Center(child: Text("Rio de Janeiro Page")),
    );
  }
}
