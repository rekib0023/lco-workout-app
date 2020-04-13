import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lco_workout/utils/styleguide.dart';
import 'package:lco_workout/services/auth.dart';

class MyAppBar extends StatelessWidget {
  // final AuthService _auth = AuthService();

  final String title;

  const MyAppBar({Key key, this.title}) : super(key: key);

  // const MyAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // leading: Icon(FontAwesomeIcons.bars),
      iconTheme: IconThemeData(color: Theme.of(context).accentColor),
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColorLight,
      expandedHeight: MediaQuery.of(context).size.height * .10,
      // actions: <Widget>[
      //   FlatButton.icon(
      //     onPressed: () async {
      //       await _auth.signout();
      //     },
      //     icon: Icon(FontAwesomeIcons.user),
      //     label: Text('Logout'),
      //   ),
      // ],
      flexibleSpace: FlexibleSpaceBar(
        // ),
        title: Text(
          title,
          style: appBarTextStyle,
        ),
        centerTitle: true,
        titlePadding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * .10 * .30),
      ),
    );
  }
}
