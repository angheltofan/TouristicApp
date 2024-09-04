import 'package:flutter/material.dart';

class SquareCaruselPages extends StatelessWidget {
  final Image image; // Specific Image widget
  final VoidCallback onTap; // Function to be called on tap
  final String cityName;

  const SquareCaruselPages({
    required this.image,
    required this.onTap,
    required this.cityName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Navigate to the specific page when tapped
      child: Container(
        width:
            double.infinity, // Use the width available to fit the square aspect
        height: double
            .infinity, // Use the height available to fit the square aspect
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), // Rounded corners
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20), // Match container's rounding
                image: DecorationImage(
                  image: image.image, // Use the Image widget's image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white
                      .withOpacity(0.7), // Semi-transparent background
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cityName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
