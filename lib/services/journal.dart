import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/journal.dart';

class JournalService {
  static Future<dynamic> get journal {
    return http
        .get('https://my-fitness-buddy-server.herokuapp.com/journal')
        .then((response) {
      final List<dynamic> data = json.decode(response.body);

      List<JournalModel> nextList = [];

      data.forEach((journal) {
        nextList.add(JournalModel.fromJson(journal));
      });

      return Future.value(nextList);
    });
  }
}
