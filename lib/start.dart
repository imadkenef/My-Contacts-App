import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartSocialMedia extends StatelessWidget {
  String url;
  StartSocialMedia({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.deepOrange),
            ),
            child: Text('Start Social Media')),
      ),
    );
  }
}
