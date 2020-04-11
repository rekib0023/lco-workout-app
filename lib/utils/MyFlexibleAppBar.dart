import 'package:flutter/material.dart';

class MyFlexibleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        'LCO HOME WORKOUT',
        style: TextStyle(
            fontSize: 16.0, letterSpacing: 2, fontWeight: FontWeight.w300),
      ),
      centerTitle: true,
      elevation: 4,
      pinned: true,
      expandedHeight: 230.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.fromLTRB(18,0,0,20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 3,
                  color: Colors.amber[600],
                ),
              ),
            ],
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.more_vert),
            )),
      ],
      backgroundColor: Colors.grey[900],
    );
  }
}
