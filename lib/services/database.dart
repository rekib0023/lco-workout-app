import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lco_workout/models/user.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  // collection reference
  final CollectionReference userCollection =
      Firestore.instance.collection('users');

  Future updateUserData(String username, String email) async {
    return await userCollection.document(uid).setData({
      'username': username,
      'email': email,
    });
  }

  // user details from snapshot
  List<UserDetails> _userDetailsFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return UserDetails(
        email: doc.data['email'] ?? '',
        username: doc.data['username'] ?? '',
      );
    }).toList();
  }

  // get user stream
  Stream<List<UserDetails>> get userDetails {
    return userCollection.snapshots().map(_userDetailsFromSnapshot);
  }
}
