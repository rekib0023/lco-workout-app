import 'dart:math';

class WorkoutDetails {
  List workoutList = [
    {
      'name': 'Push-Ups',
      'image': 'assets/images/1.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/2.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/3.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/4.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/5.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/6.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/7.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/8.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/9.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/10.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/11.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/12.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/13.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
    {
      'name': 'Push-Ups',
      'image': 'assets/images/14.png',
      'duration': '5 mins',
      'desc': 'this is desc'
    },
  ];

  List getIndices() {
    var rng = Random();
    List indices = [];
    for (var i = 0; i < 5; i++) {
      var no = rng.nextInt(workoutList.length);
      if (indices.contains(no)) {
        i--;
        continue;
      } else
        indices.add(no);
    }
    return indices;
  }

  List getWorkouts() {
    List indices = getIndices();
    List randomWorkoutList = [];
    for(var i=0; i<indices.length; i++){
      randomWorkoutList.add(workoutList[indices[i]]);
    }
    return randomWorkoutList;
  }
}
