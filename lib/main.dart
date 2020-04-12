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
          primaryColor: Colors.grey[900],
          accentColor: Colors.amber[600],
          scaffoldBackgroundColor: Colors.grey[300],
        ),
        home: Wrapper(),
      ),
    );
  }
}
