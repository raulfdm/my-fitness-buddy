import 'package:flutter/foundation.dart';

class FoodOption {
  final String id;
  final String observation;
  final List<String> foodList;

  const FoodOption({
    @required this.id,
    @required this.observation,
    @required this.foodList,
  });
}
