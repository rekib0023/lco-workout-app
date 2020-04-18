import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<User>(context);

    final spinkit = SpinKitThreeBounce(
      color: Theme.of(context).primaryColor,
      size: 25.0,
      controller: AnimationController(
          vsync: this, duration: const Duration(milliseconds: 1200)),
    );

    // return user == null ? Authenticate() : Home();
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/logo.png'),
          spinkit,
        ],
      ),
    );
  }
}
