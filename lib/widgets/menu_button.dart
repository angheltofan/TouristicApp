import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double? size;
  final Color color;

  const MenuButton({
    super.key,
    required this.onPressed,
    required this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu, size: 35, color: color),
      onPressed: onPressed,
    );
  }
}
