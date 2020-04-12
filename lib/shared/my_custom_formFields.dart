import 'package:flutter/material.dart';
import 'package:lco_workout/utils/text_input_guides.dart';

class PasswordFormField extends StatelessWidget {
  final Function onChanged;

  const PasswordFormField({Key key, @required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: textInputDecoration.copyWith(
          labelText: 'Enter your password',
          helperText: 'This has to be over 6 characters in length'),
      validator: (val) => val.length < 6
          ? 'Password must have more than six characters!'
          : null,
      obscureText: true,
      onChanged: onChanged,
    );
  }
}

class EmailFormField extends StatelessWidget {
  final Function onChanged;

  const EmailFormField({Key key, @re this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: textInputDecoration.copyWith(labelText: 'Enter your email'),
      validator: (val) => val.isEmpty ? 'Enter an email!' : null,
      onChanged: onChanged,
    );
  }
}
