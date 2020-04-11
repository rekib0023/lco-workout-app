import 'package:flutter/material.dart';
import 'package:lco_workout/screens/home/register.dart';
import 'package:lco_workout/screens/home/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Register(),
    );
  }
}