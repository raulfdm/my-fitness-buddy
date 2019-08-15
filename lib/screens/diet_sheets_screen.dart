import 'package:flutter/material.dart';

import '../models/diet_sheet.dart';
import '../widgets/diet_sheet_item.dart';
import '../widgets/loading_data.dart';
import '../services/diet_sheet.dart';

class DietSheetsScreen extends StatefulWidget {
  @override
  _DietSheetsScreenState createState() => _DietSheetsScreenState();
}

class _DietSheetsScreenState extends State<DietSheetsScreen> {
  var _isInit = false;
  var _isLoading = true;
  List<DietSheetModel> _meals = [];

  @override
  void didChangeDependencies() {
    if (!_isInit) {
      setState(() {
        _isInit = true;
        _isLoading = true;
      });

      DietSheetService.dietSheet.then((nextList) {
        setState(() {
          _meals = nextList;
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
            children: _meals.map((d) {
              return DietSheetItem(
                dietSheet: d,
              );
            }).toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              childAspectRatio: 5 / 2,
              crossAxisSpacing: 10,
            ),
          );
  }
}
