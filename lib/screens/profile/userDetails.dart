import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lco_workout/models/user.dart';
import 'package:provider/provider.dart';

class ProfileDetails extends StatefulWidget {
  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<List<UserDetails>>(context);
    
    user.forEach((details) {
      print(details.username);
      print(details.email);
    });

    // for(var details in user.documents) {
    //   print(details.data);
    // }
    return Container(
      child: Text('a'),
    );
  }
}
