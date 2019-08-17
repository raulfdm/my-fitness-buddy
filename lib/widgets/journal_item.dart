import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/journal.dart';

class JournalItem extends StatelessWidget {
  final JournalModel journalItem;

  JournalItem(this.journalItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          DateFormat('E, d MMM').format(journalItem.date),
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(journalItem.trainingName),
            Text(' - '),
            Text(
              journalItem.groupName,
              textAlign: TextAlign.end,
            ),
          ],
        ),
        Divider(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
