import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'my_variable.dart';
import 'widgets/social_media_icon.dart';

class MyContacts extends StatefulWidget {
  MyContacts({super.key});

  @override
  State<MyContacts> createState() => _MyContactsState();
}

class _MyContactsState extends State<MyContacts> {
  void changeStete(){
    setState(() {
      
    });
  }
  //String? myPlatform;
  //Uri? myUrl;
  Map<String, Uri> socialMedia = {
    'facebook.png': Uri.parse('https://www.facebook.com'),
    'instagram.png': Uri.parse('https://instagram.com'),
    'linkedin.png': Uri.parse('https://linkedin.com'),
    'tiktok.png': Uri.parse('https://tiktok.com'),
    'twitter.png': Uri.parse('https://x.com'),
    'youtube.png': Uri.parse('https://youtube.com'),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "My Contacts Screen",
          style: TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(onTap: () {}, child: Icon(Icons.home)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                myUrl == null
                    ? launchUrl(Uri.parse("tel: +21379535738"))
                    : launchUrl(myUrl!, mode: LaunchMode.externalApplication);
              },
              icon: myPlatform == null
                  ? Icon(Icons.phone)
                  : Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                      elevation: 4,
                      child: Image(image: AssetImage("assets/$myPlatform"))),
            ),
          )
        ],
      ),
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
                        icon: Icon(Icons.phone)),
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
                        platform: socialMedia.keys.toList()[index],
                        url: socialMedia.values.toList()[index],
                        changeState: changeStete);
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
