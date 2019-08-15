import 'package:flutter/material.dart';
import './ui/my_fitness_buddy_icons.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function onTabChange;

  const BottomNavBar({
    Key key,
    @required this.currentIndex,
    @required this.onTabChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).disabledColor,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.shifting,
      onTap: onTabChange,
      items: [
        BottomNavigationBarItem(
          icon: Icon(MyFitnessBuddy.gym),
          title: Text('Training'),
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFitnessBuddy.food),
          title: Text('Diet'),
        ),
      ],
    );
  }
}
