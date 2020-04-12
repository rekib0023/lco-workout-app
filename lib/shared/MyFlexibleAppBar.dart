// import 'package:flutter/material.dart';
// import 'package:lco_workout/shared/my_custom_buttons.dart';

// class MyFlexibleAppBar extends StatelessWidget {
//   final String mainHeading;
//   final String subHeading;
//   final TextStyle mainStyle;
//   final TextStyle subStyle;
//   final dynamic actions;
//   final bool containsBtn;
//   final String btnText;
//   final Function onPressedHome;
//   MyFlexibleAppBar(
//       {this.mainHeading,
//       this.actions,
//       this.subHeading,
//       this.mainStyle,
//       this.subStyle,
//       this.containsBtn,
//       this.btnText,
//       this.onPressedHome});

//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//       actions: actions,
//       centerTitle: true,
//       leading: Icon(Icons.arrow_back),
//       backgroundColor: Theme.of(context).primaryColor,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
//       ),
//       elevation: 1,
//       pinned: true,
//       expandedHeight: MediaQuery.of(context).size.  * .30,
//       iconTheme: IconThemeData(color: Colors.white),
//       flexibleSpace: FlexibleSpaceBar(
//         background: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(left:12.0, bottom: 30),
//                 child: Text(
//                   subHeading,
//                   style: subStyle,
//                 ),
//               ),
//               getBtn(btnText, onPressedHome),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   dynamic getBtn(String btnText, Function onPressedHome) {
//     return containsBtn
//         ? Container(margin: EdgeInsets.only(bottom: 50), child: SemiRoundedActionBtn(text: btnText, onPressed: onPressedHome,))
//         : Padding(
//           padding: const EdgeInsets.all(4.0),
//           child: Text(mainHeading, style: mainStyle),
//         );
//   }
// }
