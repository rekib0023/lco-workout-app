import 'package:flutter/material.dart';
import 'package:lco_workout/screens/wrapper.dart';


// void main() => runApp(MaterialApp(
//   debugShowCheckedModeBanner: false,
//   // initialRoute: '/',
//   // routes: {
//   //   '/': (context) => Loading(),
//   //   '/home': (context) => Home(),
//   //   '/login': (context) => Login(),
//   //   '/signup': (context) => Signup(),
//   // },

// ));


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    );
  }
}