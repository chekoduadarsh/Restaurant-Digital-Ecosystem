import 'package:flutter/material.dart';
import 'package:digital_menu/widgets/navigationbar/navigation_bar_logo.dart';
import 'package:digital_menu/widgets/navigation_drawer/navigation_drawer.dart';

class NavigationBarBackButton extends StatelessWidget {
  const NavigationBarBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: const Color(0xff000000),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            color: const Color(0xffffffff),
            icon: Icon(Icons.keyboard_backspace),
            onPressed: () {
              Navigator.pop(context);
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
