import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppMediumtext extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppMediumtext(
      {super.key,
      this.size = 15,
      required this.text,
      this.color = Colors.white});

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
