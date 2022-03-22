import 'package:flutter/material.dart';
import 'package:digital_menu/widgets/navigationbar/navBar_item.dart';

class Draweritem extends StatelessWidget {
  final String title;
  final IconData icon;

  const Draweritem(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, bottom: 25),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          Icon(icon),
          SizedBox(
            width: 30,
          ),
          NavBarItem(title),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
