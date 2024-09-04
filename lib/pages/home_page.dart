import 'package:flutter/material.dart';
import 'package:flutter_application/pages/navPages/caruselPages/africa_page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/americaPages/New_York.dart';
import 'package:flutter_application/pages/navPages/caruselPages/america_page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/asiaPages/Taj_Mahal_Page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/asiaPages/The_Kremlin_Page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/asia_page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/australiaPages/Sydeny_Page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/australia_page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/europa_page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/europePages/Paris_Page.dart';
import 'package:flutter_application/pages/navPages/caruselPages/europePages/Rome_Page.dart';
import 'package:flutter_application/widgets/app_LargeText.dart';
import 'package:flutter_application/widgets/app_mediumText.dart';
import 'package:flutter_application/widgets/menu_button.dart';
import 'package:flutter_application/pages/menu_page.dart';
import 'package:flutter_application/widgets/square_home_page.dart'; // Import the new widget

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List of images for each item
  final List<String> imagePaths = [
    "assets/EuropaCarusel.png",
    "assets/AmericaCarusel.png",
    "assets/AfricaCarusel.jpg",
    "assets/AsiaCarusel.png",
    "assets/AustraliaCarusel.png",
  ];

  // List of pages for each image
  final List<Widget> pages = [
    const EuropaPage(), // Page for the first image
    const AmericaPage(), // Page for the second image
    const AfricaPage(),
    const AsiaPage(),
    const AustraliaPage(),
  ];

  // List of names for each image
  final List<String> imageNames = [
    "Europe",
    "America",
    "Africa",
    "Asia",
    "Australia",
  ];

  // Data for SquareCaruselPages
  final List<String> squareImagePaths = [
    "assets/Europe/Rome.png",
    "assets/Europe/Paris.png",
    "assets/America/NewYorkCity.png",
    "assets/Australia/Sydney.png",
    "assets/Asia/TajMahal.png",
    "assets/Asia/TheKremlin.png",
  ];

  final List<String> squareCities = [
    "Rome",
    "Paris",
    "New York",
    "Sydney",
    "Taj Mahal",
    "The Kremlin"
  ];

  // Example pages to navigate to
  final List<Widget> squarePages = [
    const RomePage(),
    const ParisPage(),
    const NewYork(),
    const SydenyPage(),
    const TajMahalPage(),
    const TheKremlinPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 235, 235),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: MenuButton(
              onPressed: () {
                // Navigate to the MenuPage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPage()),
                );
              },
              color: Colors.black,
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
          // Wrap ListView.builder in SizedBox for fixed height
          SizedBox(
            height: 150, // Set height as needed
            child: ListView.builder(
              itemCount: imagePaths.length, // Use the length of the image list
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  // Navigate to the specific page when the image is tapped
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
                            image:
                                AssetImage(imagePaths[index]), // Specific image
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5, // Position text 5px from the bottom
                        left: 10, // Position text 10px from the left
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            imageNames[index], // Name of the image
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
          const SizedBox(height: 20), // Space between carousel and new text
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: AppMediumtext(
              text: "Our Recommendation",
              color: Colors.black87,
              size: 20,
            ),
          ),
          const SizedBox(height: 10), // Space between recommendation and grid
          // Wrap the grid with Expanded and SingleChildScrollView
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20), // Add horizontal padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Create rows with spacing between them
                  for (int i = 0; i < squareImagePaths.length; i += 2)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 10), // Space between cards
                                child: AspectRatio(
                                  aspectRatio:
                                      1, // Ensure the container is square
                                  child: SquareCaruselPages(
                                    image: Image.asset(squareImagePaths[i]),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                squarePages[i]),
                                      );
                                    },
                                    cityName: squareCities[i],
                                  ),
                                ),
                              ),
                            ),
                            if (i + 1 < squareImagePaths.length)
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10), // Space between cards
                                  child: AspectRatio(
                                    aspectRatio:
                                        1, // Ensure the container is square
                                    child: SquareCaruselPages(
                                      image:
                                          Image.asset(squareImagePaths[i + 1]),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  squarePages[i + 1]),
                                        );
                                      },
                                      cityName: squareCities[i + 1],
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 10), // Space between rows
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
