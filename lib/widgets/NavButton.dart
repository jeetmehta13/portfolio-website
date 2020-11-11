import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavButton extends StatefulWidget {
  final String content;

  NavButton(this.content);

  @override
  createState() => NavButtonState();
}

class NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return FlatButton(
        // padding: EdgeInsets.zero,
        onPressed: () => print(3),
        child: Text(widget.content,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    fontSize: screenSize.width / 70, color: Colors.white))));
  }
}
