import 'package:flutter/material.dart';
import '../models/training_sheet.dart';

class TrainingSheetItem extends StatelessWidget {
  final TrainingSheet trainingSheet;

  const TrainingSheetItem({Key key, this.trainingSheet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text(
            trainingSheet.alias,
            style: Theme.of(context).textTheme.title,
          ),
          Text(trainingSheet.muscularGroup),
        ],
      ),
    );
  }
}
