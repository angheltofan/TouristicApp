import 'package:flutter/material.dart';
import 'package:flutter_application/pages/menu_page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/americaPages/Grand_Canyon.dart';
import 'package:flutter_application/pages/navPages/caruselPages/americaPages/New_York.dart';
import 'package:flutter_application/pages/navPages/caruselPages/americaPages/Niagara_Falls.dart';
import 'package:flutter_application/pages/navPages/caruselPages/americaPages/Rio_de_Janeiro.dart';
import 'package:flutter_application/widgets/app_LargeText.dart';
import 'package:flutter_application/widgets/backButtonCustom.dart';
import 'package:flutter_application/widgets/carusel_pages.dart';
import 'package:flutter_application/widgets/menu_button.dart';

class AmericaPage extends StatefulWidget {
  const AmericaPage({super.key});

  @override
  State<AmericaPage> createState() => _AmericaPageState();
}

class _AmericaPageState extends State<AmericaPage> {
  final List<Image> images = [
    Image.asset("assets/America/GrandCanion.png"),
    Image.asset("assets/America/NewYorkCity.png"),
    Image.asset("assets/America/RioDeJaneiro.png"),
    Image.asset("assets/America/NiagaraFalls.png"),
  ];

  final List<Widget> pages = [
    const GrandCanyon(),
    const NewYork(),
    const RioDeJaneiro(),
    const NiagaraFalls(),
  ];

  final List<String> cityName = [
    "Grand Canyon",
    "New York City",
    "Rio de Janeiro",
    "Niagara Falls"
  ];
  final List<String> countryName = [
    "United States",
    "United States",
    "Brazil",
    "Canada"
  ];

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
                    image: AssetImage("assets/AmericaCarusel.png"),
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
                        text: "Welcome to America!",
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
