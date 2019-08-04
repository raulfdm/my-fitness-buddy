import 'package:flutter/material.dart';

class ScaffoldApp extends StatelessWidget {
  final Widget body;
  final String title;

  const ScaffoldApp({Key key, @required this.body, title})
      : title = title ?? 'My Fitness Buddy',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontFamily: 'ShadowsIntoLightTwo', fontSize: 38),
        ),
        centerTitle: true,
      ),
      body: this.body,
    );
  }
}