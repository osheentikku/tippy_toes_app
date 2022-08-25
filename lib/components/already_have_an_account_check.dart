import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tippy_toes/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function() press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              login ? "Don't have an account? " : "Already have an account? ",
              style: GoogleFonts.patrickHand(
                  textStyle:
                  TextStyle(color: kcPrimaryColor, fontSize: 20)
              ),
            ),
          ),
          GestureDetector(
            onTap: press,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                login ? "Sign Up" : "Sign In",
                style: GoogleFonts.patrickHand(
                    textStyle:
                    TextStyle(
                        color: kcPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    )
                ),
              ),
            ),
          ),
        ]
    );
  }
}



