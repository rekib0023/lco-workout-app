import 'package:flutter/material.dart';
import 'package:lco_workout/services/auth.dart';
import 'package:lco_workout/shared/loading.dart';
import 'package:lco_workout/shared/my_custom_buttons.dart';
import 'package:lco_workout/shared/my_custom_formFields.dart';
import 'package:lco_workout/utils/styleguide.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String username = '';
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : SafeArea(
            child: Scaffold(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              body: Padding(
                padding: EdgeInsets.all(50.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(
                        child: Text(
                          'SIGN UP',
                          style: mainHeadingTextStyle,
                        ),
                      ),
                      UserFormField(
                        onChanged: (val) => setState(() => username = val),
                      ),
                      EmailFormField(
                        onChanged: (val) => setState(() => email = val),
                      ),
                      PasswordFormField(
                        onChanged: (val) => setState(() => password = val),
                      ),
                      RoundedActionBtn(
                        text: 'SIGN UP',
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            setState(() => loading = true);
                            dynamic result = await _auth
                                .registerWithEmailAndPassword(email, password);
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
                              text: 'Have have an account?',
                              style: fadedTextStyle,
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'SIGN IN',
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
            ),
          );
  }
}
