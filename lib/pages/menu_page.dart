import 'package:Trekker/pages/menu_buttonPages/dynamic_page.dart';
import 'package:Trekker/widgets/app_mediumText.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: const Color.fromARGB(
            255, 125, 101, 130), // Culoarea dorită pentru AppBar
      ),
      body: Container(
        color: const Color.fromARGB(255, 242, 235, 235), // Fundalul paginii
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ListTile(
                title: AppMediumtext(
                  text: 'About',
                  color: Colors.black87,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const DynamicPage(pageName: 'About'),
                    ),
                  );
                },
              ),
              ListTile(
                title: AppMediumtext(
                  text: 'Privacy Policy',
                  color: Colors.black87,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const DynamicPage(pageName: 'Privacy Policy'),
                    ),
                  );
                },
              ),
              ListTile(
                title: AppMediumtext(
                  text: 'Contact',
                  color: Colors.black87,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const DynamicPage(pageName: 'Contact'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
