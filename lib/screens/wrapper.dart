import 'package:flutter/material.dart';
import 'package:lco_workout/screens/authenticate/authenticate.dart';
import 'package:lco_workout/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:lco_workout/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    // return either home or authenticate widget dynamically
    return user == null ? Authenticate() : Home();
  }
}