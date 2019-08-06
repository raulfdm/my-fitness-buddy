import 'package:flutter/material.dart';
import '../models/diet_sheet.dart';
import '../screens/diet_details_screen.dart';

class DietSheetItem extends StatelessWidget {
  final DietSheetModel dietSheet;

  const DietSheetItem({Key key, @required this.dietSheet}) : super(key: key);

  void _selectDiet(BuildContext context) {
    Navigator.of(context).pushNamed(
      DietDetailsScreen.route,
      arguments: {
        'dietSheet': dietSheet,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPlural = dietSheet.foodOptions.length > 1;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => _selectDiet(context),
        borderRadius: BorderRadius.circular(8),
        splashColor: Theme.of(context).primaryColorDark,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                dietSheet.title,
                style: Theme.of(context).textTheme.title,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '${dietSheet.foodOptions.length} ${isPlural ? 'opções' : 'opção'}',
                  ),
                  Text('Horário Sugerido: ${dietSheet.time}'),
                ],
              )
              // Text(trainingSheet.muscularGroup),
            ],
          ),
        ),
      ),
    );
  }
}
