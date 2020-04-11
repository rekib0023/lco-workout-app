import 'package:flutter/material.dart';
import 'package:lco_workout/services/auth.dart';
import 'package:lco_workout/utils/MyFlexibleAppBar.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth  = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: <Widget>[
          MyFlexibleAppBar(mText: 'Sign In',),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Flex(
                    direction: Axis.vertical,
                    children: <Widget>[
                      Text('jjjj'),
                      Text('jjjj'),
                      RaisedButton(
                        child: Text('Sign in anon'),
                        onPressed: () async {
                          dynamic result = await _auth.signInAnom();
                          if (result == null)
                            print('error signing in');
                          else  {
                            print('signed in');
                            print(result.uid);
                          }
                        },
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
