import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              )),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              child: Container(
                width: double.infinity / 2,
                height: 195,
                padding: EdgeInsets.fromLTRB(18, 80, 0, 0),
                color: Colors.grey[900],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text( 
                      'LCO HOME WORKOUT',
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3,
                        color: Colors.amber[500],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 250,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                onPressed: () {},
                color: Colors.grey[900],
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.amber[500],
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
