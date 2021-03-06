import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lco_workout/screens/home/home.dart';
import 'package:lco_workout/screens/profile/profile.dart';
import 'package:lco_workout/screens/workouts/workouts.dart';
import 'package:lco_workout/services/auth.dart';
import 'package:lco_workout/utils/styleguide.dart';

class ScreensWrapper extends StatefulWidget {
  @override
  _ScreensWrapperState createState() => _ScreensWrapperState();
}

class _ScreensWrapperState extends State<ScreensWrapper> {
  int _currentIndex = 0;

  List<Widget> _navPages = [
    HomePage(),
    WorkoutsPage(),
    ProfilePage(),
    HomePage(),
  ];

  static const String Logout = 'Logout';
  static const String DayMode = 'Day mode';
  static const String RandomMode = 'Random mode';

  static List<String> choices = [
    RandomMode,
    DayMode,
    Logout,
  ];

  final List<String> _screensName = ['Home', 'Workout', 'Profile', 'Home'];

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screensName[_currentIndex],
          style: appBarTextStyle,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        elevation: 0,
        // debugging requirs
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
      body: _navPages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: navBarTextStyle,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.dumbbell),
            title: Text(
              'Workouts',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            title: Text(
              'Profile',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            title: Text(
              'Profile',
            ),
          ),
        ],
      ),
    );
  }

  void choiceAction(String choice) async {
    if (choice == Logout) {
      await _auth.signout();
    }
    else if(choice == DayMode){
      setState(() {
        _navPages[0] = WorkoutsPage();
      });
    }
    else if(choice == RandomMode){
      setState(() {
        _navPages[0] = HomePage();
      });
    }
  }
}
