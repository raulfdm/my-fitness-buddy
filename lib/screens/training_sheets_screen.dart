import 'package:flutter/material.dart';

import '../widgets/training_sheet_item.dart';
import '../widgets/scaffold_app.dart';

import '../dummy_data.dart';

class TrainingSheetsScreen extends StatelessWidget {
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return ScaffoldApp(
      body: GridView(
        padding: EdgeInsets.all(20),
        children: DUMMY_TRAINING_SHEET.map((t) {
          return TrainingSheetItem(
            trainingSheet: t,
          );
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
