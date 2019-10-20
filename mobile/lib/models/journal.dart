import 'package:flutter/foundation.dart';

class JournalModel {
  String id;
  DateTime date;
  String trainingName;
  String groupName;

  JournalModel({
    @required this.date,
    @required this.id,
    @required this.trainingName,
    @required this.groupName,
  });

  factory JournalModel.fromJson(data) {
    return JournalModel(
      id: data['_id'],
      date: DateTime.tryParse(data['date']),
      groupName: data['group_name'],
      trainingName: data['training_name'],
    );
  }
}
