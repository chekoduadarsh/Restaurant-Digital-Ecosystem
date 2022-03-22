import 'package:flutter/material.dart';
import 'package:digital_menu/widgets/navigationbar/navigation_bar_tablet_desktop.dart';
import 'package:digital_menu/widgets/navigationbar/navigationbar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navigation_bar extends StatelessWidget {
  const Navigation_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
