import 'package:flutter/material.dart';
import 'package:lco_workout/screens/authenticate/sign_in.dart';
import 'package:lco_workout/screens/authenticate/register.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  // _AuthenticateState({ this.showSignIn });

  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    return showSignIn ? SignIn(toggleView: toggleView) : Register(toggleView: toggleView);
  }
}