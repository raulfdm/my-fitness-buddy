import 'package:flutter/material.dart';
import 'package:my_fitness_buddy_flutter/widgets/training_sheet_item.dart';

import '../dummy_data.dart';

class TrainingSheetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Fitness Buddy',
          style: TextStyle(fontFamily: 'ShadowsIntoLightTwo', fontSize: 38),
        ),
        centerTitle: true,
      ),
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
