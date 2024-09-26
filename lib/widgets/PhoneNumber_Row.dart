import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Row_PhoneNumber extends StatelessWidget {
  const Row_PhoneNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
        ]);
  }
}
