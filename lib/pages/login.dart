import 'package:flutter/material.dart';
import 'package:lco_workout/utils/MyFlexibleAppBar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: <Widget>[
          MyFlexibleAppBar(),
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
