import 'package:flutter/material.dart';
import 'package:my_fitness_buddy_flutter/dummy_data.dart';

import '../widgets/diet_sheet_item.dart';

class DietSheetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(20),
      children: DUMMY_DIET_SHEET.map((d) {
        return DietSheetItem(
          dietSheet: d,
        );
      }).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400,
        childAspectRatio: 5 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
