import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final Color color;
  final double size;

  const CustomBackButton({
    super.key,
    this.color = Colors.black, // Culoarea iconiței
    this.size = 30.0, // Dimensiunea iconiței
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context); // Revine la pagina anterioară
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          //color: Colors.grey[200], // Fundalul butonului
        ),
        child: Icon(
          Icons.arrow_back,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
