import 'package:flutter/material.dart';

class NewJournalFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
      onPressed: () {},
    );
  }
}
