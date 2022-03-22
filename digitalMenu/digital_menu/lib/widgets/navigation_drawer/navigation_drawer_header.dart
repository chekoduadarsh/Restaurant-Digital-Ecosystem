import 'package:flutter/material.dart';
import 'package:digital_menu/constants/app_colors.dart';

class NaviagationDrawerHeader extends StatelessWidget {
  const NaviagationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: const Color(0xfffd7014),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'RAMEN',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          Text(
            'ROSE',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
