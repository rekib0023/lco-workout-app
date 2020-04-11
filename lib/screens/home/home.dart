import 'package:flutter/material.dart';
import 'package:lco_workout/services/auth.dart';
import 'package:lco_workout/shared/MyFlexibleAppBar.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: <Widget>[
          MyFlexibleAppBar(
            mText: 'Home',
            action: <Widget>[
              FlatButton.icon(
                onPressed: () async {
                  await _auth.signout();
                }, 
                icon: Icon(Icons.person, color: Colors.white,), 
                label: Text('logout', style: TextStyle(color: Colors.white),),
              ),
            ]
          ),
        ],
      ),
    );
  }
}