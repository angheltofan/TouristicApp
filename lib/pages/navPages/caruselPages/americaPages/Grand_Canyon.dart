import 'package:flutter/material.dart';

class GrandCanyon extends StatelessWidget {
  const GrandCanyon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grand Canyon")),
      body: const Center(child: Text("Grand Canyon Page")),
    );
  }
}
