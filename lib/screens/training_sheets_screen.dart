import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../widgets/training_sheet_item.dart';
import '../models/training_sheet.dart';

class TrainingSheetsScreen extends StatefulWidget {
  static String route = '/';

  @override
  _TrainingSheetsScreenState createState() => _TrainingSheetsScreenState();
}

class _TrainingSheetsScreenState extends State<TrainingSheetsScreen> {
  var _isInit = false;
  List<TrainingSheetModel> _trainingSheet = [];

  @override
  void didChangeDependencies() {
    if (!_isInit) {
      setState(() {
        _isInit = true;
      });

      http
          .get('https://my-fitness-buddy-server.herokuapp.com/routine')
          .then((response) {
        final data = json.decode(response.body) as Map<String, dynamic>;
        List<TrainingSheetModel> nextList = [];

        data['data'].forEach((routine) {
          nextList.add(TrainingSheetModel.fromJson(routine));
        });

        setState(() {
          _trainingSheet = nextList;
        });
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
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
          mainAxisSpacing: 20),
    );
  }
}
