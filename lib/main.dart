import 'package:flutter/material.dart';
import 'package:tippy_toes/Screens/Welcome/welcome_screen.dart';
import 'package:tippy_toes/constants.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  //application root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tippy Toes Daycare',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}

/*
class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tippy Toes Daycare'),
        centerTitle: true,
      ),
    );
  }
}
*/