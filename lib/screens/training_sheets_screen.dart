import 'package:flutter/material.dart';

import '../widgets/training_sheet_item.dart';
import '../models/training_sheet.dart';
import '../services/training_sheet.dart';
import '../widgets/loading_data.dart';

class TrainingSheetsScreen extends StatefulWidget {
  static String route = '/';

  @override
  _TrainingSheetsScreenState createState() => _TrainingSheetsScreenState();
}

class _TrainingSheetsScreenState extends State<TrainingSheetsScreen> {
  var _isInit = false;
  var _isLoading = true;
  List<TrainingSheetModel> _trainingSheet = [];

  @override
  void didChangeDependencies() {
    if (!_isInit) {
      setState(() {
        _isInit = true;
        _isLoading = true;
      });

      TrainingSheetService.trainingSheet.then((nextList) {
        setState(() {
          _trainingSheet = nextList;
          _isLoading = false;
        });
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? LoadingData()
        : GridView(
            padding: EdgeInsets.all(20),
            children: _trainingSheet.map((t) {
              return TrainingSheetItem(
                trainingSheet: t,
              );
            }).toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          );
  }
}
