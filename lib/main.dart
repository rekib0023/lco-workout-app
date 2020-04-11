import 'package:flutter/material.dart';
import 'package:lco_workout/pages/loading.dart';
import 'package:lco_workout/pages/home.dart';
import 'package:lco_workout/pages/login.dart';
import 'package:lco_workout/pages/signup.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/login': (context) => Login(),
    '/signup': (context) => Signup(),
  },
));
