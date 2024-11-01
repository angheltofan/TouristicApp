import 'package:Trekker/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0; // To track the selected index

  // Define pages with specific widgets
  final List<Widget> pages = [
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex, // Show the page corresponding to the current index
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // Reflect the current selected index
        onTap: (index) {
          setState(() {
            currentIndex = index; // Update the current index on tap
          });
        },
        backgroundColor: const Color.fromARGB(
            255, 125, 101, 130), // Set the background color
        selectedItemColor: Colors.white, // Set the selected item color
        unselectedItemColor: Colors.white24, // Set the unselected item color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
