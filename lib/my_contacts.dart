import 'package:flutter/material.dart';
import 'package:my_contacts/widgets/social_media_icon.dart';
import 'package:url_launcher/url_launcher.dart';

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
      body: SizedBox(
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
              Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        launchUrl(Uri.parse("tel: +21379535738"));
                      },
                      icon: const Icon(
                        Icons.phone,
                        size: 30,
                        color: Colors.grey,
                        
                      ),
                    ),
                    const Text(
                      "+213 795357938",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )
                  ]),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                padding: const EdgeInsets.all(20),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: socialMedia.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  if (index < socialMedia.length) {
                    return SocialMediaIcon(
                      iconAssets: socialMedia.keys.elementAt(index),
                      url: socialMedia.values.elementAt(index),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
