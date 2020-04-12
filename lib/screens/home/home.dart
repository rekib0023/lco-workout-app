import 'package:flutter/material.dart';
import 'package:lco_workout/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  // action options
  static const String Logout = 'Logout';
  static const String About = 'About';
  static const List<String> choices = [Logout, About];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
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
                }
          )
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
