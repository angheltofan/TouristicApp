import 'package:flutter/material.dart';

class CaruselPages extends StatelessWidget {
  final Image image; // Widgetul Image specific
  final VoidCallback onTap; // Funcția ce va fi apelată la apăsare
  final String cityName;
  final String countryName;

  const CaruselPages({
    required this.image,
    required this.onTap,
    required this.cityName,
    required this.countryName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Navighează la pagina specifică la apăsare
      child: Container(
        width: 350,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              width: 0.4 * 330,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: image.image, // Folosește imaginea widgetului Image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(7.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cityName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      countryName,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 125, 101,
                              130), // Culoarea de fundal a butonului
                          //shape: BoxShape.circle, // Formă pătrată
                          borderRadius: BorderRadius.circular(
                              10), // Ușor colțuri rotunjite
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white, // Culoarea iconului
                          size: 30,
                        ),
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
