import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/journal.dart';

class JournalItem extends StatelessWidget {
  final JournalModel journalItem;

  JournalItem(this.journalItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Text(
                DateFormat('E, d MMM').format(journalItem.date),
              ),
            ),
            Expanded(
              // flex: 1,
              child: Text(journalItem.trainingName),
            ),
            Expanded(
              flex: 2,
              child: Text(journalItem.groupName, textAlign: TextAlign.end,),
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
