import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lco_workout/screens/workouts/workoutList.dart';
import 'package:lco_workout/shared/constants.dart';
import 'package:lco_workout/shared/my_custom_buttons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final workouts = WorkoutDetails().getWorkouts();
  final double setsNo = sets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Column(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.18,
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('I have selected 5 workouts for you.'),
                Text('Select the number of sets.'),
                RoundedActionBtn(
                  text: 'Get Started',
                  // size: MediaQuery.of(context).size.width*0.10,
                  onPressed: setsNo == 0
                      ? null
                      : () {
                          print(setsNo.toString() + 'is');
                        },
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  initialPage: 0,
                  height: MediaQuery.of(context).size.height * 0.50,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                ),
                items: workouts.map(
                  (workout) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                child: Image.asset(workout['image']),
                              ),
                              Text(workout['name']),
                              Text(workout['duration']),
                              Text(workout['desc'])
                            ],
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            ],
          ),
          // RaisedButton(onPressed: WorkoutDetails().getWorkouts,),
        ]));
  }
}
