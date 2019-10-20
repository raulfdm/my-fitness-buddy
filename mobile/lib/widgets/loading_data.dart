import 'package:flutter/material.dart';

class LoadingData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: LinearProgressIndicator(),
        ),
        Flexible(
          flex: 4,
          child: Center(
            child: Text(
              'Retriving Data...',
              style: Theme.of(context).textTheme.title,
            ),
          ),
        )
      ],
    );
  }
}
