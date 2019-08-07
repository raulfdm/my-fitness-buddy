import 'package:flutter/material.dart';

import './diet_sheets_screen.dart';
import './training_sheets_screen.dart';
import '../widgets/scaffold_app.dart';
import '../widgets/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  static String route = '/';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _widgetsToRender = [
    TrainingSheetsScreen(),
    DietSheetsScreen(),
  ];

  int _currentIndex = 0;

  void _onTabChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldApp(
      body: _widgetsToRender[_currentIndex],
      navigation: BottomNavBar(
        currentIndex: _currentIndex,
        onTabChange: _onTabChange,
      ),
    );
  }
}