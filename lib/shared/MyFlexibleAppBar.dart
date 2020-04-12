import 'package:flutter/material.dart';
import 'package:lco_workout/utils/styleguide.dart';

class MyFlexibleAppBar extends StatelessWidget {
  
  final String mText;
  final dynamic action;
  MyFlexibleAppBar({ this.mText, this.action });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        'LCO HOME WORKOUT',
        style: fadedHeadingTextStyle,
      ),
      centerTitle: true,
      leading: Icon(Icons.arrow_back_ios),
      backgroundColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      elevation: 1,
      pinned: true,
      expandedHeight: 240.0,
      iconTheme: IconThemeData(color: Colors.white),
      actions: action,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.fromLTRB(24,0,0,20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                mText,
                style: amberHeadingTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
