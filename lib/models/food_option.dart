import 'package:flutter/foundation.dart';

class FoodOptionModel {
  final String id;
  final String observation;
  final List<String> foodList;

  const FoodOptionModel({
    @required this.id,
    @required this.observation,
    @required this.foodList,
  });
}
