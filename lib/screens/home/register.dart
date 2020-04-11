import 'package:flutter/material.dart';
import 'package:lco_workout/services/auth.dart';
import 'package:lco_workout/utils/MyFlexibleAppBar.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: <Widget>[
          MyFlexibleAppBar(
            mText: 'Sign Up',
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Flex(
                    direction: Axis.vertical,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 30.0),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 60.0,
                              ),
                              TextFormField(
                                onChanged: (val) {
                                  setState(() => email = val);
                                },
                              ),
                              SizedBox(
                                height: 50.0,
                              ),
                              TextFormField(
                                obscureText: true,
                                onChanged: (val) {
                                  setState(() => password = val);
                                },
                              ),
                              SizedBox(
                                height: 140.0,
                              ),
                              RaisedButton(
                                onPressed: () async {
                                  print(email);
                                  print(password);
                                },
                                padding: EdgeInsets.fromLTRB(60, 5, 60, 5),
                                color: Colors.amber[600],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}