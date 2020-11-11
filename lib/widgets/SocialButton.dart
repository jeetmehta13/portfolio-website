import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatefulWidget {
  final IconData content;
  final String url;

  SocialButton(this.content, this.url);

  @override
  createState() => SocialButtonState();
}

class SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return IconButton(
      // padding: EdgeInsets.zero,
      onPressed: () => _launchURL(widget.url),
      icon: Icon(widget.content),
      iconSize: screenSize.width / 40,
      color: Colors.white,
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
