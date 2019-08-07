import 'package:flutter/material.dart';

import '../models/diet_sheet.dart';
import '../widgets/scaffold_app.dart';

/* TODO: break this into small components in the name of jesus */
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
        child: Column(
          children: <Widget>[
            Container(
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
                      dietSheet.time,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: dietSheet.foodOptions
                  .asMap()
                  .map((index, foodOption) {
                    return MapEntry(
                      index,
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 12),
                                  child: Text(
                                    'Opção ${index + 1}',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Text('Se for pré-treino (30 a 60min antes)'),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...foodOption.foodList.map((food) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(food),
                                        Divider(),
                                      ],
                                    );
                                  })
                                ],
                              ),
                            ),
                          ],
                        ),
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
