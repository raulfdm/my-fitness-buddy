import 'package:flutter/foundation.dart';

class ExerciseModel {
  final String id;
  final String name;
  final String advancedTechnique;
  final String series;
  final String repetitions;

  const ExerciseModel({
    @required this.id,
    @required this.name,
    @required this.series,
    @required this.repetitions,
    this.advancedTechnique = '',
  });
}
