import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lco_workout/shared/my_custom_buttons.dart';
import 'package:lco_workout/utils/styleguide.dart';
import 'package:lco_workout/services/auth.dart';

final AuthService _auth = AuthService();

class HomeAppBar extends StatelessWidget {
  static const String Logout = 'Logout';

  static const List<String> choices = [
    Logout,
  ];

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: IconThemeData(color: Theme.of(context).accentColor),
      backgroundColor: Colors.white,
      title: Text('Home', style: mainHeadingTextStyle,),
      centerTitle: true,
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
      expandedHeight: MediaQuery.of(context).size.height * .25,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 0, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('I have selected 5 workouts for you.'),
              Text('Select the number of sets'),
              RoundedActionBtn(
                onPressed: () {},
                text: 'Get Started',
              )
            ],
          ),
        ),
      ),
    );
  }
}

void choiceAction(String choice) async {
  if (choice == 'Logout') {
    await _auth.signout();
  }
}
