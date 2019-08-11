import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/training_sheet.dart';

class TrainingSheetService {
  static Future<dynamic> get trainingSheet {
    return http
        .get('https://my-fitness-buddy-server.herokuapp.com/routine')
        .then((response) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      List<TrainingSheetModel> nextList = [];

      data['data'].forEach((routine) {
        nextList.add(TrainingSheetModel.fromJson(routine));
      });

      return Future.value(nextList);
    });
  }
}
