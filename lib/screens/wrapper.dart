import 'package:flutter/material.dart';
import 'package:lco_workout/screens/authenticate/authenticate.dart';
import 'package:lco_workout/screens/homeScreensWrapper.dart';
import 'package:lco_workout/screens/landing.dart';
import 'package:provider/provider.dart';
import 'package:lco_workout/models/user.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  bool showLanding = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        showLanding = !showLanding;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return showLanding ? Landing() : user == null ? Authenticate() : ScreensWrapper();
  }
}
