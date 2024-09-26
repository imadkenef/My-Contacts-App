import 'package:flutter/material.dart';

import 'widgets/Contact_Grid.dart';
import 'widgets/PhoneNumber_Row.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});

  Map<String, String> socialMedia = {
    'facebook.png': 'https://www.facebook.com',
    'instagram.png': 'https://instagram.com',
    'linkedin.png': 'https://linkedin.com',
    'tiktok.png': 'https://tiktok.com',
    'twitter.png': 'https://x.com',
    'youtube.png': 'https://youtube.com',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      body: SafeArea(
        bottom: true,
        left: true,
        top: true,
        right: true,
        maintainBottomViewPadding: true,
        minimum: EdgeInsets.zero,
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/myimg.jpg'),
                  radius: 120,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Imad Eddine Kenef",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row_PhoneNumber(),
                const SizedBox(
                  height: 20,
                ),
                ConatctsGrid(socialMedia: socialMedia),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

