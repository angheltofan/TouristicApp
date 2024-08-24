import 'package:flutter/material.dart';
//import 'package:flutter_application/pages/home_page.dart';
//import 'package:flutter_application/pages/navPages/profile_page.dart';
//import 'package:flutter_application/pages/navPages/search_page.dart';
import 'package:flutter_application/pages/navPages/main_page.dart';
import 'package:flutter_application/widgets/app_LargeText.dart';
import 'package:flutter_application/widgets/app_mediumText.dart';
import 'package:flutter_application/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/FirstPage.png"),
            fit: BoxFit.cover, // Cover the entire container area
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 140, left: 20, right: 20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargetext(text: 'Explore the \nworld with us'),
                    const SizedBox(height: 10),
                    AppMediumtext(
                      text:
                          'Discover the most unique routes around the world and experience the tradition of each place',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ResponsiveButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainPage(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
