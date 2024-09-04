import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/app_LargeText.dart';
import 'package:flutter_application/widgets/app_mediumText.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 235, 235),
      appBar: AppBar(
        title: const Text('About Application'),
        backgroundColor: const Color.fromARGB(255, 125, 101, 130),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppLargetext(
              text: "Discover the World with our app",
              color: Colors.black87,
            ),
            const SizedBox(height: 20),
            AppMediumtext(
              text:
                  "Welcome to our app, your go-to tool for exploring and discovering the most fascinating corners of the globe! Whether you're passionate about travel, cultural adventures, or simply curious about different regions, our app provides an interactive and informative experience to satisfy your curiosity and desire for exploration.",
              color: Colors.black54,
            ),
            const SizedBox(height: 20),
            AppLargetext(
              text: "Features:",
              color: Colors.black,
              size: 20,
            ),
            const SizedBox(height: 10),
            AppMediumtext(
              text:
                  '''• Visual Exploration: Browse through our galleries of images from various regions around the world, including Europe, America, Africa, Asia, and Australia. Each image is accompanied by descriptive text that offers captivating insights into the respective location. \n
• Seamless Navigation: Each image in our interactive carousel serves as a gateway to dedicated pages that provide additional details and information about regions, countries, and attractions. A simple tap on an image will take you directly to the page specific to that region. \n
• Detailed Information: Discover useful and interesting information about each region. From tourist attractions and historical landmarks to cultural traditions and key facts, our app brings you everything you need to become familiar with new places.\n
• User-Friendly Interface: Our app is designed to be easy to use, with an intuitive and pleasant interface. Navigate effortlessly between pages and enjoy a smooth exploration experience.\n
• Accessibility: We provide convenient options to easily return to the main page or access settings and contact information directly within the app, ensuring you have everything you need at your fingertips. \n\n
\t Every visit to our app is an opportunity to learn and connect with the world around you. Join us on this virtual journey and explore your favorite destinations from the comfort of your home!
''',
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
