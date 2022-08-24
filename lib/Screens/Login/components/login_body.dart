import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tippy_toes/Screens/background.dart';
import 'package:tippy_toes/constants.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            //login text
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                "LOGIN",
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

            TextFieldContainer(
                child: TextField()
            )

          ],
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.7,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(29)
      ),
      child: child,
    );
  }
}
