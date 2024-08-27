import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/app_LargeText.dart';
import 'package:flutter_application/widgets/app_mediumText.dart';

class PrivacypolicyPage extends StatelessWidget {
  const PrivacypolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 235, 235),
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: const Color.fromARGB(255, 125, 101, 130),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppLargetext(
              text: "Privacy Policy",
              color: Colors.black87,
            ),
            const SizedBox(height: 20),
            AppMediumtext(
              text: '''Effective Date:

We respect your privacy and are committed to protecting your personal information. This policy outlines how we handle your data: \n
• Information Collected: We collect personal data you provide and usage data to improve our services.\n
• Usage: Your data helps us maintain and enhance the app and communicate with you.\n
• Security: We use measures to protect your data from unauthorized access.\n
• Third Parties: We are not responsible for third-party links in our app.\n
• Your Choices: You can contact us to access or update your data.\n
For questions, email us at tripApp@gmail.com.
''',
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}
