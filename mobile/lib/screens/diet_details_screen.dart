import 'package:flutter/material.dart';

import '../models/diet_sheet.dart';
import '../widgets/scaffold_app.dart';
import '../widgets/food_option.dart';

class SuggestedTime extends StatelessWidget {
  final String time;

  const SuggestedTime({Key key, this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Text(
            'Horário Sugerido:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              time,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DietDetailsScreen extends StatelessWidget {
  static String route = '/diet-details';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments
        as Map<String, DietSheetModel>;

    final dietSheet = routeArgs['dietSheet'];

    return ScaffoldApp(
      title: dietSheet.title,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SuggestedTime(
              time: dietSheet.time,
            ),
            Column(
              children: dietSheet.foodOptions
                  .asMap()
                  .map((index, foodOption) {
                    return MapEntry(
                      index,
                      FoodOption(
                        foodOption: foodOption,
                        optionNumber: index + 1,
                      ),
                    );
                  })
                  .values
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
