import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lco_workout/screens/home/home.dart';
import 'package:lco_workout/screens/profile/profile.dart';
import 'package:lco_workout/screens/workouts/workouts.dart';
import 'package:lco_workout/shared/my_drawer.dart';
import 'package:lco_workout/utils/styleguide.dart';

class ScreensWrapper extends StatefulWidget {
  @override
  _ScreensWrapperState createState() => _ScreensWrapperState();
}

class _ScreensWrapperState extends State<ScreensWrapper> {
  int _currentIndex = 0;

  final List<Widget> _navPages = [
    HomePage(),
    WorkoutsPage(),
    ProfilePage(),
    HomePage(),
  ];

  final List<String> _screensName = [
    'Home',
    'Workout',
    'Profile',
    'Home'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
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
        // selectedItemColor: Color(0xFFf1c40f),
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
}
