import 'package:Trekker/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:Trekker/widgets/app_LargeText.dart';
import 'package:Trekker/widgets/menu_button.dart'; // Importă menu_button

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> imagePaths = [
    "assets/images/EuropaCarusel.png",
    "assets/images/NorthAmericaCarusel.png",
    "assets/images/SouthAmericaCarusel.jpg",
    "assets/images/AfricaCarusel.jpg",
    "assets/images/AsiaCarusel.png",
    "assets/images/AustraliaCarusel.png",
    "assets/images/AntarcticaCarusel.png",
  ];

  final List<String> imageNames = [
    "Europe",
    "North America",
    "South America",
    "Africa",
    "Asia",
    "Australia",
    "Antarctica",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 235, 235),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 10.0), // Uniform padding for left and right
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 60), // Top padding only for the button
              child: MenuButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const MenuPage(),
                  );
                },
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: AppLargetext(
                text: "Where do \nyou want to go?",
                color: Colors.black87,
              ),
            ), // Space between button and text

            const SizedBox(height: 20),
            SizedBox(
              height: 160,
              child: ListView.builder(
                itemCount: imagePaths.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    // Implement navigation logic here
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 220,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(imagePaths[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          imageNames[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
