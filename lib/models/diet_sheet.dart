import 'package:flutter/foundation.dart';

import './food_option.dart';

class DietSheetModel {
  final String id;
  final String title;
  final String time;
  final List<FoodOption> foodOptions;

  const DietSheetModel({
    @required this.id,
    @required this.title,
    @required this.time,
    @required this.foodOptions,
  });
}
