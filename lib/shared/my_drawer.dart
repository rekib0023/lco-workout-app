import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lco_workout/services/auth.dart';

class MyDrawer extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Rekib Ahmed"),
            accountEmail: Text('something'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text('P'),
            ),
          ),
          ListTile(
            title: Text('Logout'),
            trailing: Icon(FontAwesomeIcons.signOutAlt),
            onTap: () async {
              await _auth.signout();
              // Navigator.of(context).pushNamed('/home');
            },
          ),
          // ListTile(
          //   title: Text('Search'),
          //   trailing: Icon(Icons.search),
          //   onTap: () {
          //     Navigator.of(context).pop();
          //     // Navigator.of(context).pushNamed('/search');
          //   },
          // ),
        ],
      ),
    );
  }
}
