import 'package:flutter/material.dart';
import 'package:lco_workout/utils/text_input_guides.dart';

class UserFormField extends StatelessWidget {

  final Function onChanged;

  const UserFormField({Key key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: textInputDecoration.copyWith(labelText: 'Username'),
      validator: (val) => val.isEmpty ? 'Enter an username' : null,
      onChanged: onChanged,
    );
  }
}


class EmailFormField extends StatelessWidget {
  final Function onChanged;

  const EmailFormField({Key key, @required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: textInputDecoration.copyWith(labelText: 'Email Address'),
      validator: (val) => val.isEmpty ? 'Enter an email!' : null,
      onChanged: onChanged,
    );
  }
}

class PasswordFormField extends StatelessWidget {

  final Function onChanged;
  const PasswordFormField({Key key, @required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: textInputDecoration.copyWith(
          labelText: 'Password',
          helperText: 'This has to be over 6 characters in length'),
      validator: (val) => val.length < 6
          ? 'Password must have more than six characters!'
          : null,
      obscureText: true,
      onChanged: onChanged,
    );
  }
}