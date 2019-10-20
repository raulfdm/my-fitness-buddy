import 'package:flutter/foundation.dart';

import '../models/exercise.dart';

class TrainingSheetModel {
  final String id;
  final String alias;
  final String muscularGroup;
  final List<ExerciseModel> exercises;
  final int restTimeMin;
  final int restTimeMax;

  const TrainingSheetModel({
    @required this.id,
    @required this.alias,
    @required this.muscularGroup,
    @required this.exercises,
    this.restTimeMin,
    this.restTimeMax,
  });

  factory TrainingSheetModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> exercises = json['exercises'] ?? [];
    final dynamic restTime = json['rest_time'] ?? 0;

    return TrainingSheetModel(
      alias: json['alias'],
      id: json['id'],
      muscularGroup: json['group_name'],
      restTimeMin: restTime != 0 ? restTime[0] : restTime,
      restTimeMax: restTime != 0 ? restTime[1] : restTime,
      exercises: exercises.map((exercise) {
        return ExerciseModel(
          advancedTechnique: exercise['advanced_technique'],
          id: exercise['id'],
          name: exercise['name'],
          repetitions: exercise['repetition'],
          series: exercise['series'],
        );
      }).toList(),
    );
  }
}
