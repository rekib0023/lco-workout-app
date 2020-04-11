import 'package:flutter/material.dart';

class MyFlexibleAppBar extends StatelessWidget {
  
  final String mText;
  final dynamic action;
  MyFlexibleAppBar({ this.mText, this.action });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        'LCO HOME WORKOUT',
        style: TextStyle(
            fontSize: 16.0, letterSpacing: 2, fontWeight: FontWeight.w300),
      ),
      centerTitle: true,
      leading: Icon(Icons.arrow_back_ios),
      backgroundColor: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      elevation: 1,
      pinned: true,
      expandedHeight: 220.0,
      iconTheme: IconThemeData(color: Colors.white),
      actions: action,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.fromLTRB(18,0,0,20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                mText,
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 3,
                  color: Colors.amber[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
