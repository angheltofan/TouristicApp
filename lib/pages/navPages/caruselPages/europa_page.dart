import 'package:flutter/material.dart';
import 'package:flutter_application/pages/menu_page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/europePages/London_Page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/europePages/Paris_Page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/europePages/Barcelona_Page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/europePages/Rome_Page.dart';
import 'package:flutter_application/widgets/app_LargeText.dart';
import 'package:flutter_application/widgets/backButtonCustom.dart';
import 'package:flutter_application/widgets/carusel_pages.dart';
import 'package:flutter_application/widgets/menu_button.dart';

class EuropaPage extends StatefulWidget {
  const EuropaPage({super.key});

  @override
  State<EuropaPage> createState() => _EuropaPageState();
}

class _EuropaPageState extends State<EuropaPage> {
  final List<Image> images = [
    Image.asset("assets/Europe/London.png"),
    Image.asset("assets/Europe/Paris.png"),
    Image.asset("assets/Europe/Rome.png"),
    Image.asset("assets/Europe/Barcelona.png")
  ];

  final List<Widget> pages = [
    const LondonPage(),
    const ParisPage(),
    const RomePage(),
    const BarcelonaPage()
  ];

  final List<String> cityName = ["London", "Paris", "Rome", "Barcelona"];
  final List<String> countryName = ["England", "France", "Italy", "Spain"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // Background image for Europe
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/EuropaCarusel.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // MenuButton at the top left
            Positioned(
              left: 20,
              top: 50,
              child: MenuButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MenuPage()),
                  );
                },
              ),
            ),
            // BackButton at the top right
            const Positioned(
              right: 20,
              top: 50,
              child: CustomBackButton(
                color: Colors.white,
              ),
            ),
            // Main container with scrollable content
            Positioned(
              top: 320,
              left: 0,
              right: 0,
              bottom:
                  0, // Make sure the container extends to the bottom of the screen
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 242, 235, 235),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    // Fixed text at the top
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: AppLargetext(
                        text: "Welcome to Europe!",
                        size: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Scrollable content
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            for (int index = 0; index < images.length; index++)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: CaruselPages(
                                  cityName: cityName[index],
                                  countryName: countryName[index],
                                  image: images[index], // Specific Image widget
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => pages[index],
                                      ),
                                    );
                                  },
                                ),
                              ),
                          ],
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
