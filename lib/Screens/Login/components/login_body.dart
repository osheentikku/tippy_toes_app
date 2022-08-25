import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tippy_toes/Screens/background.dart';
import 'package:tippy_toes/components/rounded_input_field.dart';
import 'package:tippy_toes/components/rounded_passport_field.dart';
import 'package:tippy_toes/components/text_field_container.dart';
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

            //email text field
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),

            //password text field
            RoundedPasswordField(
              onChanged: (value){},
            )

            //login button

          ],
        ),
      ),
    );
  }
}



