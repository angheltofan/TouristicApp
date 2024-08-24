import 'package:flutter/material.dart';
import 'package:flutter_application/pages/home_page.dart';
import 'package:flutter_application/pages/navPages/profile_page.dart';
import 'package:flutter_application/pages/navPages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0; // To track the selected index
  List pages = [const HomePage(), const SearchPage(), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex], // Display the current page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // Reflect the current selected index
        onTap: (index) {
          setState(() {
            currentIndex = index; // Update the current index on tap
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home', // Add a label here
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search', // Add a label here
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile', // Add a label here
          ),
        ],
      ),
    );
  }
}
