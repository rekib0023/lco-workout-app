import 'package:flutter/material.dart';
import 'package:lco_workout/shared/my_appBar.dart';

class WorkoutsPage extends StatefulWidget {
  @override
  _WorkoutsPageState createState() => _WorkoutsPageState();
}

class _WorkoutsPageState extends State<WorkoutsPage> {
  @override
  Widget build(BuildContext context) {
    // CustomScrollView(
    //     slivers: <Widget>[
    //       MyAppBar(title: 'Home'),
    //     ],
    //   ),

    return Scaffold(
      appBar: AppBar(
        title: Text('Workouts'),
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
