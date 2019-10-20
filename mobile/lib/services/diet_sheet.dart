import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/diet_sheet.dart';

class DietSheetService {
  static Future<dynamic> get dietSheet {
    return http
        .get('https://my-fitness-buddy-server.herokuapp.com/diet')
        .then((response) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      List<DietSheetModel> nextList = [];

      data['data'].forEach((meal) {
        nextList.add(DietSheetModel.fromJson(meal));
      });

      return Future.value(nextList);
    });
  }
}
