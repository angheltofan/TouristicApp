import 'package:flutter/material.dart';

class RomePage extends StatelessWidget {
  const RomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rome")),
      body: const Center(child: Text("Rome Page")),
    );
  }
}
