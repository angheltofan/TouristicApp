import 'package:Trekker/pages/navPages/main_page.dart';

import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); // Asigură inițializarea widget-urilor
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainPage());
  }
}
