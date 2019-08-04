import 'package:flutter/foundation.dart';
import 'package:my_fitness_buddy_flutter/models/exercise.dart';

class TrainingSheetModel {
  final String id;
  final String alias;
  final String muscularGroup;
  final List<ExerciseModel> exercises;

  const TrainingSheetModel({
    @required this.id,
    @required this.alias,
    @required this.muscularGroup,
    @required this.exercises,
  });
}
