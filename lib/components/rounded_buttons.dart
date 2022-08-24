import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical:10),
      width: size.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            backgroundColor: color, //button background color
            primary: Colors.black, //button text color
          ),
          onPressed: press,
          child: Text(
            text,
            style: GoogleFonts.patrickHand(
                textStyle:
                TextStyle(fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 4)),
          ),
        ),
      ),
    );
  }
}
