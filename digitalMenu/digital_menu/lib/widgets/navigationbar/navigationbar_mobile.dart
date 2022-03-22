import 'package:flutter/material.dart';
import 'package:digital_menu/widgets/navigationbar/navigation_bar_logo.dart';
import 'package:digital_menu/widgets/navigation_drawer/navigation_drawer.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color(0xff000000),
      child: Row(
        children: [
          IconButton(
            color: const Color(0xffffffff),
            icon: Icon(Icons.menu),
            onPressed: () {
              NavigationDrawer();
              Scaffold.of(context).openDrawer();
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
