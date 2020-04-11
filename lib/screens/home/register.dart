import 'package:flutter/material.dart';
import 'package:lco_workout/services/auth.dart';
import 'package:lco_workout/shared/constants.dart';
import 'package:lco_workout/utils/MyFlexibleAppBar.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  // text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: <Widget>[
          MyFlexibleAppBar(
            mText: 'Register',
            action: <Widget>[
              FlatButton.icon(
                onPressed: () {
                  widget.toggleView();
                },
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 45),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 40.0,
                        ),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(hintText: 'Enter your email'),
                          validator: (val) => val.isEmpty ? 'Enter an email' : null,
                          onChanged: (val) {
                            setState(() => email = val);
                          },
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(hintText: 'Enter your password'),
                          validator: (val) => val.length < 6 ? 'Enter a password(min length 6)' : null,
                          obscureText: true,
                          onChanged: (val) {
                            setState(() => password = val);
                          },
                        ),
                        SizedBox(
                          height: 80.0,
                        ),
                        SizedBox(
                          width: 200.0,
                          child: RaisedButton(
                            onPressed: () async {
                              if(_formKey.currentState.validate()){
                                dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                                if(result == null) {
                                  setState(() => error = 'please supply a valid');
                                }
                              }
                            },
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
                        ),
                        SizedBox(height: 12.0,),
                        Text(
                          error,
                          style: TextStyle(color: Colors.red, fontSize: 14.0),
                        ),
                      ],
                    ),
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
