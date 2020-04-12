import 'package:flutter/material.dart';
import 'package:lco_workout/services/auth.dart';
import 'package:lco_workout/shared/MyFlexibleAppBar.dart';
import 'package:lco_workout/shared/loading.dart';
import 'package:lco_workout/shared/my_custom_buttons.dart';
import 'package:lco_workout/shared/my_custom_formFields.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: CustomScrollView(
              slivers: <Widget>[
                MyFlexibleAppBar(
                  mText: 'Sign In',
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
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 45),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 80.0),
                              EmailFormField(
                                onChanged: (val) {
                                  setState(() => email = val);
                                },
                              ),
                              SizedBox(height: 35.0),
                              PasswordFormField(
                                onChanged: (val) {
                                  setState(() => password = val);
                                },
                              ),
                              SizedBox(height: 90.0),
                              RoundedAccentButtons(
                                text: 'SignIn',
                                onPressed: () async {
                                  if (_formKey.currentState.validate()) {
                                    setState(() => loading = true);
                                    dynamic result =
                                        await _auth.signinWithEmailAndPassword(
                                            email, password);
                                    if (result == null) {
                                      setState(() {
                                        error = 'please supply a valid';
                                        loading = false;
                                      });
                                    }
                                  }
                                },
                              ),
                              SizedBox(height: 12.0),
                              Text(
                                error,
                                style: TextStyle(
                                    color: Colors.red, fontSize: 14.0),
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
