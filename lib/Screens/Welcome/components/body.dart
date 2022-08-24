import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tippy_toes/Screens/Welcome/components/background.dart';
import 'package:tippy_toes/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // total height and width of screen
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
      const FittedBox(
      fit: BoxFit.fitWidth,
        child: Text(
          "Welcome to",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ),
      SvgPicture.asset(
        "assets/icons/Tippy-Toes-Day-Care-Logo-(text).svg",
        height: size.height * 0.45,
      ),

      //login button
      TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            backgroundColor: kPrimaryColor, //button background color
            primary: Colors.black, //button text color
          ),
          onPressed: () {},
          child: Text("LOGIN"),
    )],
    )
    );
  }
}
