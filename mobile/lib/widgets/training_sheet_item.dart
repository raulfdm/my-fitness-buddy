import 'package:flutter/material.dart';

import '../screens/training_sheet_detail_screen.dart';
import '../models/training_sheet.dart';

class TrainingSheetItem extends StatelessWidget {
  final TrainingSheetModel trainingSheet;

  const TrainingSheetItem({Key key, this.trainingSheet}) : super(key: key);

  void _selectTrainingSheet(BuildContext context) {
    Navigator.of(context).pushNamed(
      TrainingSheetDetailScreen.route,
      arguments: {
        'trainingSheet': trainingSheet,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    /* Gesture + click styles Widget */
    return InkWell(
      onTap: () => {
        if (trainingSheet.exercises.isNotEmpty) {_selectTrainingSheet(context)}
      },
      borderRadius: BorderRadius.circular(8),
      splashColor: Theme.of(context).primaryColorDark,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Text(
                trainingSheet.alias,
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Flexible(
              child: Text(
                trainingSheet.muscularGroup,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
