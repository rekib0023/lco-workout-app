import 'package:flutter/material.dart';
import 'package:lco_workout/utils/styleguide.dart';

class RoundedAccentButtons extends StatelessWidget {
  final String text;
  final Function onPressed;

  const RoundedAccentButtons({Key key, this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      child: RaisedButton(
        onPressed: onPressed,
        color: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(text, style: roundedAccentButtonTextStyle,),
      ),
    );
  }
}

class SemiRoundedActionBtn extends StatelessWidget {
  final String text;
  final Function onPressed;

  const SemiRoundedActionBtn({Key key, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          text,
          style: semiRoundedActionBtnStyle,
        ),
      ),
    );
  }
}
