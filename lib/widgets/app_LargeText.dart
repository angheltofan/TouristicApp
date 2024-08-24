import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppLargetext extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppLargetext(
      {super.key,
      this.size = 30,
      required this.text,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}