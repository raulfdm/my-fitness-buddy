import 'package:flutter/material.dart';

import '../models/diet_sheet.dart';
import '../widgets/scaffold_app.dart';

class DietDetailsScreen extends StatelessWidget {
  static String route = '/diet-details';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments
        as Map<String, DietSheetModel>;

    final dietSheet = routeArgs['dietSheet'];

    return ScaffoldApp(
      title: dietSheet.title,
      body: Container(
        child: Text('Helo'),
      ),
    );
  }
}
