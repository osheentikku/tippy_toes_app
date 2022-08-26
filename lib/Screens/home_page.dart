import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tippy_toes/constants.dart';
import '';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("signed in as: " + user.email!),
            MaterialButton(
              child: Text("Edit User"),
              onPressed: () {
                _userEditBottomSheet(context);
              },
              color: kcPrimaryColor,
            ),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color: kcPrimaryColor,
              child: Text("sign out"),
            ),
          ],
        ),
      ),
    );
  }

  void _userEditBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Update Profile"),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.cancel),
                      iconSize: 25,
                      color: kcPrimaryColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
