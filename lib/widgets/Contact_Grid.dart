import 'package:flutter/material.dart';

import 'social_media_icon.dart';

class ConatctsGrid extends StatelessWidget {
  const ConatctsGrid({
    super.key,
    required this.socialMedia,
  });

  final Map<String, String> socialMedia;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: socialMedia.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return SocialMediaIcon(
          iconAssets: socialMedia.keys.elementAt(index),
          url: socialMedia.values.elementAt(index),
        );

        return null;
      },
    );
  }
}
