import 'package:flutter/foundation.dart';

import './food_option.dart';

class DietSheetModel {
  final String id;
  final String title;
  final String time;
  final List<FoodOptionModel> foodOptions;

  const DietSheetModel({
    @required this.id,
    @required this.title,
    @required this.time,
    @required this.foodOptions,
  });

  factory DietSheetModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> foodOptions = json['foodOptions'];

    return DietSheetModel(
      id: json['id'],
      title: json['title'],
      time: json['time'],
      foodOptions: foodOptions.map((food) {
        final List<dynamic> foodList = food['foodList'];

        return FoodOptionModel(
          id: food['id'],
          observation: food['observation'],
          foodList: foodList.cast<String>(),
        );
      }).toList(),
    );
  }
}
