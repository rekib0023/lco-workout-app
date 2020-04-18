import 'package:flutter/material.dart';
import 'package:lco_workout/models/user.dart';
import 'package:lco_workout/services/database.dart';
import 'package:provider/provider.dart';
// import 'package:flutter/services/database.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<UserDetails>>.value(
      value: DatabaseService().userDetails,
      child: Scaffold(),
    );
  }
}
