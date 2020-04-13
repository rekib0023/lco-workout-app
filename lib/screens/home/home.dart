import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lco_workout/screens/profile/profile.dart';
import 'package:lco_workout/screens/workouts/workouts.dart';
import 'package:lco_workout/shared/my_appBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // body: CustomScrollView(
      //   slivers: <Widget>[
      //     MyAppBar(title: 'HomePage'),
      //   ],
      // ),
    );
  }
}
