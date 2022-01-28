import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/sign_in/home_page.dart';
import 'package:time_tracker_app/app/sign_in/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  UserCredential? _user;
  void _updateUser(UserCredential user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(
        onSignIn: _updateUser,
      );
    } else {
      return HomePage(
        onSignOut: () {},
      );
    }
  }
}
