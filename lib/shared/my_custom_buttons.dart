import 'package:flutter/material.dart';
import 'package:lco_workout/utils/styleguide.dart';

class RoundedActionBtn extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double size;

  const RoundedActionBtn({Key key, this.text, this.onPressed, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: RaisedButton(
        onPressed: onPressed,
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: roundedButtonTextStyle,
        ),
      ),
    );
  }
}
