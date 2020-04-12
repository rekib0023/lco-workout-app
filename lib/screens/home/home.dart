import 'package:flutter/material.dart';
import 'package:lco_workout/services/auth.dart';
import 'package:lco_workout/shared/MyFlexibleAppBar.dart';
import 'package:lco_workout/utils/styleguide.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  // action options
  static const String Logout = 'Logout';
  static const String About = 'About';
  static const List<String> choices = [Logout, About];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: <Widget>[
          MyFlexibleAppBar(
            mainHeading: '',
            mainStyle: mainHeadingTextStyle,
            subHeading: 'Here are the 5 workouts I chosed for you..!',
            containsBtn: true,
            btnText: 'Let\'s get started!',
            onPressedHome: () {
              // TODO start workout
              print('hi');
            },
            subStyle: subHeadingTextStyle,
            actions: <Widget>[
              PopupMenuButton<String>(
                onSelected: choiceAction,
                itemBuilder: (BuildContext context) {
                  return choices.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Text(
                'ss',
                style: mainTitleTextStyle,
              ),
            ]),
          ),
        ],
      ),
    );
  }

  void choiceAction(String choice) async {
    if (choice == Logout) {
      await _auth.signout();
    }
  }
}
