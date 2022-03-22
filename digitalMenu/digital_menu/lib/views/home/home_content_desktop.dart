import 'package:flutter/material.dart';
import 'package:digital_menu/widgets/centeredView/centerd_view.dart';
import 'package:digital_menu/widgets/navigationbar/navigation_bar.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(),
        )
      ],
    );
  }
}
