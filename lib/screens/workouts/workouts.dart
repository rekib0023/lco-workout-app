import 'package:flutter/material.dart';
import 'package:lco_workout/shared/my_appBar.dart';

class WorkoutsPage extends StatefulWidget {
  @override
  _WorkoutsPageState createState() => _WorkoutsPageState();
}

class _WorkoutsPageState extends State<WorkoutsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            MyAppBar(
              title: 'Workouts',
            )
          ],
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      // ),
    );
  }
}
