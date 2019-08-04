import 'package:flutter/material.dart';

import '../models/training_sheet.dart';
import '../screens/training_sheet_detail_screen.dart';

class TrainingSheetItem extends StatelessWidget {
  final TrainingSheetModel trainingSheet;

  const TrainingSheetItem({Key key, this.trainingSheet}) : super(key: key);

  void _selectTrainingSheet(BuildContext context) {
    Navigator.of(context).pushNamed(
      'training-sheet',
      arguments: {
        'trainingSheet': trainingSheet,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectTrainingSheet(context),
      borderRadius: BorderRadius.circular(8),
      splashColor: Theme.of(context).primaryColorDark,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              trainingSheet.alias,
              style: Theme.of(context).textTheme.title,
            ),
            Text(trainingSheet.muscularGroup),
          ],
        ),
      ),
    );
  }
}
