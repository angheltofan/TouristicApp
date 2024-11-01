import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppMediumtext extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppMediumtext(
      {super.key,
      this.size = 18,
      required this.text,
      this.color = Colors.black87});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
