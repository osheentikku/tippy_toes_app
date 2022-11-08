import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tippy_toes/Screens/background.dart';
import 'package:tippy_toes/components/text_field_container.dart';
import 'package:tippy_toes/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {

  bool loading = false;

  //text controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    setState(() {
      loading = true;
    });

    if (_emailController.text == "" || _passwordController.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("All fields are required!"),
          backgroundColor: kcPrimaryColor,
        ),
      );
    } else {
      UserCredential result = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    }
    setState(() {
      loading = false;
    });
  }
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                "Welcome to",
                style: GoogleFonts.patrickHand(
                    textStyle: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            ),

            //tippy toes logo
            SvgPicture.asset(
              "assets/icons/Tippy-Toes-Day-Care-Logo-(text).svg",
              height: size.height * 0.3,
            ),

            //email text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFieldContainer(
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    icon: Icon(
                        Icons.person,
                        color: kcPrimaryColor
                    ),
                    hintText: "Your email",
                  ),
                ),
              ),
            ),

            //password text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFieldContainer(
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                        Icons.lock,
                        color: kcPrimaryColor
                    ),
                    hintText: "Password",
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            //login button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: loading? CircularProgressIndicator(): Container(
                child: GestureDetector(
                  onTap: signIn,
                  child: Container(
                    width: size.width * 0.7,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kcPrimaryColor,
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.patrickHand(
                            textStyle: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 4
                            )
                        ), // style
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            //sign up link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.patrickHand(
                      textStyle: TextStyle(
                        fontSize: 20,
                      ),
                  ),
                ),
                Text(
                    "Sign up now",
                  style: GoogleFonts.patrickHand(
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                      )

                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

