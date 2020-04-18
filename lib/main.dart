import 'package:flutter/material.dart';
import 'package:lco_workout/models/user.dart';
import 'package:lco_workout/screens/wrapper.dart';
import 'package:lco_workout/services/auth.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFF8e44ad),
          // primaryColor: Color(0xFFf39c12),
          primaryColorLight: Colors.white,
          accentColor: Color(0xFF2c3e50),
          scaffoldBackgroundColor: Color(0xFFecf0f1),
        ),
        home: Wrapper(),
      ),
    );
  }
}
