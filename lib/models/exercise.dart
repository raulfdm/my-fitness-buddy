import 'package:flutter/foundation.dart';

class ExerciseModel {
  final String id;
  final String name;
  final int series;
  final int repetitions;
  final String advancedTechnique;

  const ExerciseModel({
    @required this.id,
    @required this.name,
    @required this.series,
    @required this.repetitions,
    @required this.advancedTechnique,
  });
}
