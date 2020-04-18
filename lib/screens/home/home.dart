import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
<<<<<<< HEAD
import 'package:lco_workout/screens/workouts/workoutList.dart';
import 'package:lco_workout/shared/constants.dart';
import 'package:lco_workout/shared/my_custom_buttons.dart';
import 'package:lco_workout/utils/styleguide.dart';
=======
import 'package:lco_workout/services/auth.dart';
import 'package:lco_workout/shared/appbars/home_appbar.dart';
// import 'package:lco_workout/shared/my_appBar.dart';
>>>>>>> 11e95e1a2c48e32f99f5444bcb3509a61a5828fd

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
<<<<<<< HEAD
  final workouts = WorkoutDetails().workoutList;
  final double setsNo = sets;
  List imgList = [
    'https://images.unsplash.com/photo-1554629947-334ff61d85dc?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1534067783941-51c9c23ecefd?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1505764761634-1d77b57e1966?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1545161296-d9c2c241f2ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjExMDk0fQ&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1542662565-7e4b66bae529?ixlib=rb-1.2.1&auto=format&fit=crop&w=564&q=80'
  ];
=======
  final AuthService _auth = AuthService();
>>>>>>> 11e95e1a2c48e32f99f5444bcb3509a61a5828fd

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Home', style: appBarTextStyle,),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.18,
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('I have selected 5 workouts for you.'),
                Text('Select the number of sets.'),
                RoundedActionBtn(text: 'Get Started', onPressed: setsNo == 0 ? null : () {print(setsNo.toString()+'is');},)
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.10,),
          CarouselSlider(
            options: CarouselOptions(
              initialPage: 0,
              height: 400,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
            ),
            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.network(
                      imgUrl,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
=======
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            HomeAppBar(),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.teal[100 * (index % 9)],
                      child: Text('grid item $index'),
                    ),
                  );
                },
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
>>>>>>> 11e95e1a2c48e32f99f5444bcb3509a61a5828fd
    );
  }
}
