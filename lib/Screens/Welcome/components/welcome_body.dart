import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tippy_toes/Screens/Login/login_screen.dart';
import 'package:tippy_toes/Screens/background.dart';
import 'package:tippy_toes/constants.dart';

import '../../../components/rounded_buttons.dart';

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // total height and width of screen
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        //welcome text
        FittedBox(
    fit: BoxFit.fitWidth,
      child: Text(
        "Welcome to",
        style: GoogleFonts.patrickHand(
            textStyle:
            TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
      ),
    ),

        //tippy toes logo
        SvgPicture.asset(
        "assets/icons/Tippy-Toes-Day-Care-Logo-(text).svg",
        height: size.height * 0.45,
        ),

        //space
        SizedBox(height: size.height * 0.02),

        //login button
        RoundedButton(
          text: "LOGIN",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ),
            );
          }
        ),

        //sign up button
        RoundedButton(
          text: "SIGN UP",
          color: kPrimaryLightColor,
          press: (){},
        ),
      ],
    ),
    ));
    }
  }

