import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lco_workout/services/auth.dart';
import 'package:lco_workout/shared/my_appBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            MyAppBar(
              title: 'Home',
            ),
            SliverList(
              //             child: FlatButton.icon(
              //   onPressed: () async {
              //     await _auth.signout();
              //   },
              //   icon: Icon(FontAwesomeIcons.user),
              //   label: Text('Logout'),
              // ),
              delegate: SliverChildListDelegate(
                <Widget>[
                  FlatButton.icon(
                    onPressed: () async {
                      await _auth.signout();
                    },
                    icon: Icon(FontAwesomeIcons.user),
                    label: Text('Logout'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
