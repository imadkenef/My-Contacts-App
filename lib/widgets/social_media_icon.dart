import 'package:flutter/material.dart';
import 'package:my_contacts/my_variable.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatefulWidget {
  String platform;
  Uri url;
  Function changeState;
  bool clicked = false;
  double? radius;
  SocialMediaIcon(
      {super.key,
      required this.platform,
      required this.url,
      required this.changeState});

  @override
  State<SocialMediaIcon> createState() => _SocialMediaIconState();
}

class _SocialMediaIconState extends State<SocialMediaIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Material(
        color: Colors.red,
        borderRadius:
            BorderRadius.circular(widget.radius == null ? 50 : widget.radius!),
        elevation: 4,
        child: InkWell(
          onDoubleTap: () {
            myPlatform = widget.platform;
            myUrl = widget.url;
            widget.changeState();
          },
          onTap: () {
            //print(myPlatform);

            //print(myPlatform);
            widget.radius == 50
                ? {widget.radius = 20, setState(() {})}
                : {widget.radius = 50, setState(() {})};
            launchUrl(widget.url, mode: LaunchMode.externalApplication);
          },
          child: Image(
              image: AssetImage('assets/${widget.platform}'),
              height: 50,
              width: 50,
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
