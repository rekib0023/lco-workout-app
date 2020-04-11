// import 'package:flutter/material.dart';
// import 'package:lco_workout/screens/home/register.dart';
// import 'package:lco_workout/screens/home/sign_in.dart';

// class Loading extends StatefulWidget {
//   @override
//   _LoadingState createState() => _LoadingState();
// }

// class _LoadingState extends State<Loading> {

//   bool showSignIn = true;
//   void toggleView() {
//     setState(() => showSignIn = !showSignIn);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[800],
//       body: Container(
//         // decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           // crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.all(0),
//               margin: EdgeInsets.all(0),
//               child: Image.asset('assets/logo1.png'),
//             ),
//             // SizedBox(height: 150,),
//             SizedBox(
//               width: 200,
//               child: RaisedButton(
//                 onPressed: () {SignIn(toggleView: toggleView,);},
//                 padding: EdgeInsets.fromLTRB(60, 5, 60, 5),
//                 color: Colors.amber[600],
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Text(
//                   'Login',
//                   style: TextStyle(
//                     color: Colors.grey[900],
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20.0
//                     ),
//                 ),
//             ),
//             ),
//             SizedBox(
//               width: 200,
//               child: RaisedButton(
//               onPressed: () {Register(toggleView: toggleView,)},
//               padding: EdgeInsets.fromLTRB(60, 5, 60, 5),
//               color: Colors.grey[900],
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Text(
//                 'Signup',
//                 style: TextStyle(
//                   color: Colors.amber[600],
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20.0
//                   ),
//               ),
//             ),
//             ),
//           ],
//           ),
//       ),
//     );
//   }
// }