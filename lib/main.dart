import 'package:flutter/material.dart';

import './config/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.yellowAccent,
        fontFamily: 'Montserrat',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(17, 17, 17, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(17, 17, 17, 1),
              ),
              title: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: ROUTES,
    );
  }
}
