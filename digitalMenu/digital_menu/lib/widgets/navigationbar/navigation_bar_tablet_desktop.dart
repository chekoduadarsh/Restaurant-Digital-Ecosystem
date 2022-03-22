import 'package:flutter/material.dart';
import 'package:digital_menu/widgets/navigationbar/navigation_bar_logo.dart';
import 'package:digital_menu/widgets/navigationbar/navBar_item.dart';
import 'package:digital_menu/widgets/navigation_drawer/navigation_drawer.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0x00000000),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              NavigationDrawer();
              Scaffold.of(context).openDrawer();
              print("YES");
            },
          ),
          Expanded(
              child: Center(
            child: NavBarLogo(),
          )),
        ],
      ),
    );
  }
}
