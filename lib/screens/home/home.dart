import 'package:flutter/material.dart';
import 'package:lco_workout/services/auth.dart';
import 'package:lco_workout/utils/styleguide.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();

  static const String Logout = 'Logout';
  static const String About = 'About';
  static const List<String> choices = [Logout, About];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: Icon(Icons.menu),
              iconTheme: IconThemeData(color: Theme.of(context).accentColor),
              centerTitle: true,
              backgroundColor: Theme.of(context).primaryColorLight,
              expandedHeight: MediaQuery.of(context).size.height * .13,
              actions: <Widget>[
                FlatButton.icon(
                  onPressed: () async {
                    await _auth.signout();
                  },
                  icon: Icon(Icons.person),
                  label: Text('Logout'),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Text(
                      'LCO',
                      style: appBarTextStyle,
                    ),
                    Text(
                      'Home Workout',
                      style: appBarSubTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Profile'),
          )
        ],
      ),
    );
  }

  // void choiceAction(String choice) async {
  //   if (choice == Home.Logout) {
  //     await _auth.signout();
  //   }
  // }
}
