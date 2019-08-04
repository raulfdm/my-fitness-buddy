import 'package:flutter/material.dart';

import '../widgets/scaffold_app.dart';
import '../models/training_sheet.dart';
import '../widgets/exercise.dart';

class TrainingSheetDetailScreen extends StatelessWidget {
  const TrainingSheetDetailScreen();

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments
        as Map<String, TrainingSheetModel>;

    final trainingSheet = routeArgs['trainingSheet'];

    return ScaffoldApp(
      title: trainingSheet.alias,
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: trainingSheet.exercises.map((exercise) {
            return Exercise(
              exercise: exercise,
            );
          }).toList(),
        ),
      ),
    );
  }
}
