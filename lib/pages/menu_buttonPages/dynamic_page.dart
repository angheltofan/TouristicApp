import 'package:Trekker/db_helper.dart';
import 'package:Trekker/widgets/app_mediumText.dart';
import 'package:flutter/material.dart';

class DynamicPage extends StatelessWidget {
  final String pageName;

  const DynamicPage({super.key, required this.pageName});

  Future<String> _getPageContent() async {
    List<Map<String, dynamic>> pages = await DBHelper.getPages();
    for (var page in pages) {
      if (page['page_name'] == pageName) {
        return page['content'];
      }
    }
    return 'Page not found';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName),
        backgroundColor: const Color.fromARGB(
            255, 125, 101, 130), // Culoarea dorită pentru AppBar
      ),
      backgroundColor: const Color.fromARGB(255, 242, 235, 235),

      // Fundalul dorit pentru pagină
      body: FutureBuilder(
        future: _getPageContent(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Text('Error loading page'));
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: AppMediumtext(
                text: snapshot.data ?? 'No content available',
                color: Colors.black87,
                // Ajustează dimensiunea fontului după cum dorești
              ),
            ),
          );
        },
      ),
    );
  }
}
