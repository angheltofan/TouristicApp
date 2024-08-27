import 'package:flutter/material.dart';
import 'package:flutter_application/pages/navPages/caruselPages/africa_page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/america_page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/asia_page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/australia_page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/europa_page.dart';
import 'package:flutter_application/widgets/app_LargeText.dart';
import 'package:flutter_application/widgets/menu_button.dart';
import 'package:flutter_application/pages/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // O listă de imagini pentru fiecare element
  final List<String> imagePaths = [
    "assets/EuropaCarusel.png",
    "assets/AmericaCarusel.png",
    "assets/AfricaCarusel.jpg",
    "assets/AsiaCarusel.png",
    "assets/AustraliaCarusel.png",
  ];

  // O listă de pagini pentru fiecare imagine
  final List<Widget> pages = [
    const EuropaPage(), // Pagina pentru prima imagine
    const AmericaPage(), // Pagina pentru a doua imagine
    const AfricaPage(),
    const AsiaPage(),
    const AustraliaPage(),
  ];

  // O listă de nume pentru fiecare imagine
  final List<String> imageNames = [
    "Europe",
    "America",
    "Africa",
    "Asia",
    "Australia",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 235, 235),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: MenuButton(
              onPressed: () {
                // Navigate to the MenuPage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPage()),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: AppLargetext(
              text: "Where do \nyou want to go?",
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),
          // Înfășoară ListView.builder în SizedBox pentru a-i da o înălțime fixă
          SizedBox(
            height: 150, // Setează înălțimea în funcție de nevoi
            child: ListView.builder(
              itemCount:
                  imagePaths.length, // Folosim lungimea listei de imagini
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  // Navighează către pagina specifică atunci când imaginea este apăsată
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pages[index]),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 230,
                  height: 150,
                  child: Stack(
                    children: [
                      Container(
                        width: 230,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                                imagePaths[index]), // Imaginea specifică
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom:
                            5, // Poziționează textul la 5px de partea de jos
                        left:
                            10, // Poziționează textul la 10px de partea stângă
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            imageNames[index], // Numele imaginii
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
