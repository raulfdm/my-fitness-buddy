import 'package:flutter/material.dart';

import '../models/exercise.dart';

class Exercise extends StatelessWidget {
  final ExerciseModel exercise;

  const Exercise({Key key, this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(17, 17, 17, 0.5),
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(exercise.name),
                Text('${exercise.series}x${exercise.repetitions}'),
              ],
            ),
          ),
          if (exercise.advancedTechnique.isNotEmpty)
            Text(
              exercise.advancedTechnique,
              textAlign: TextAlign.start,
            )
        ],
      ),
    );
  }
}
