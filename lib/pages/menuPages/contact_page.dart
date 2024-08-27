import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/app_LargeText.dart';
import 'package:flutter_application/widgets/app_mediumText.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 235, 235),
      appBar: AppBar(
        title: const Text('Contact'),
        backgroundColor: const Color.fromARGB(255, 125, 101, 130),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppLargetext(
              text: "Contact Us",
              color: Colors.black87,
            ),
            const SizedBox(height: 20),
            AppMediumtext(
              text:
                  '''We value your feedback and are here to assist you with any questions or concerns you may have. Whether you need support, have a suggestion, or simply want to get in touch, we’re always happy to hear from you.''',
              color: Colors.black87,
            ),
            const SizedBox(height: 20),
            AppLargetext(
              text: "Get in Touch",
              color: Colors.black87,
              size: 20,
            ),
            AppMediumtext(
              text: '''Email Us:
For general inquiries, support, or feedback, please email us at tripApp@gmail.com. We strive to respond to all messages within 24-48 hours.''',
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}
