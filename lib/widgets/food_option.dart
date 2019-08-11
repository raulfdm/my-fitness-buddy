import 'package:flutter/material.dart';

import '../models/food_option.dart';

class FoodOption extends StatelessWidget {
  final int optionNumber;
  final FoodOptionModel foodOption;

  const FoodOption({
    Key key,
    @required this.optionNumber,
    @required this.foodOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child: Text(
                    'Opção $optionNumber',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                if (foodOption.observation.isNotEmpty)
                  Text(
                    'Obs.: ${foodOption.observation}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...foodOption.foodList.map((food) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('- $food'),
                      Divider(),
                    ],
                  );
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
