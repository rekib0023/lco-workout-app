import 'package:flutter/material.dart';
import 'package:lco_workout/screens/authenticate/authenticate.dart';
import 'package:lco_workout/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either home or authenticate widget
    return Authenticate();
  }
}