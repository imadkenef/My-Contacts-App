import 'package:flutter/material.dart';

import '../start.dart';

class SocialMediaIcon extends StatefulWidget {
  String iconAssets;
  String url;
  SocialMediaIcon({super.key, required this.iconAssets, required this.url});

  @override
  State<SocialMediaIcon> createState() => _SocialMediaIconState();
}

class _SocialMediaIconState extends State<SocialMediaIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => StartSocialMedia(url: widget.url));
        },
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/${widget.iconAssets}'),
          radius: 40,
        ),
      ),
    );
  }
}
