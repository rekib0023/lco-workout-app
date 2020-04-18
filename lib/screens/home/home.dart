import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lco_workout/shared//workoutList.dart';
import 'package:lco_workout/shared/constants.dart';
import 'package:lco_workout/shared/my_custom_buttons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List workouts = WorkoutDetails().getWorkouts();
  final double setsNo = sets;
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: <Widget>[
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
                  onPressed: setsNo == 0
                      ? null
                      : () {
                          print(setsNo.toString() + 'is');
                        },
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                    initialPage: 0,
                    height: MediaQuery.of(context).size.height * 0.50,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                      print(_current.toString() + 'is');
                    }),
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
                          child: workout != null
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      child: Image.asset(workout['image']),
                                    ),
                                    Text(workout['name']),
                                    Text(workout['duration']),
                                    Text(workout['desc'])
                                  ],
                                )
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RoundedActionBtn(
                                      text: 'Add more exercise',
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: workouts.map((workout) {
                  int index = workouts.indexOf(workout);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Theme.of(context).primaryColor
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
