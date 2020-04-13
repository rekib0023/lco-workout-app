import 'package:flutter/material.dart';
import 'package:lco_workout/shared/my_appBar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // return CustomScrollView(
    //   slivers: <Widget>[
    //     MyAppBar(title: 'Profile'),
    //   ],
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
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
