import 'package:flutter/material.dart';
import 'package:lco_workout/services/auth.dart';
import 'package:lco_workout/shared/loading.dart';
import 'package:lco_workout/shared/my_custom_buttons.dart';
import 'package:lco_workout/shared/my_custom_formFields.dart';
import 'package:lco_workout/utils/styleguide.dart';

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
            body: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 2),
                    SizedBox(
                      child: Text(
                        'SIGN IN',
                        style: mainHeadingTextStyle,
                      ),
                    ),
                    EmailFormField(
                      onChanged: (val) => setState(() => email = val),
                    ),
                    PasswordFormField(
                      onChanged: (val) => setState(() => password = val),
                    ),
                    RoundedActionBtn(
                      size: MediaQuery.of(context).size.width * 0.73,
                      text: 'SIGN IN',
                      size: MediaQuery.of(context).size.width * 0.73,
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          setState(() => loading = true);
                          dynamic result = await _auth
                              .signinWithEmailAndPassword(email, password);
                          if (result == null) {
                            setState(() {
                              error = 'please supply a valid';
                              loading = false;
                            });
                          }
                        }
                      },
                    ),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 14.0),
                    ),
                    SizedBox(
                      child: GestureDetector(
                        child: RichText(
                          text: TextSpan(
                            text: 'Don\'t have an account?',
                            style: fadedTextStyle,
                            children: <TextSpan>[
                              TextSpan(
                                text: ' SIGN UP',
                                style: linkTextStyle,
                              )
                            ],
                          ),
                        ),
                        onTap: widget.toggleView,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
