import 'package:flutter/material.dart';
import 'package:digital_menu/widgets/food_tile/food_tile.dart';
import 'package:digital_menu/views/home/home_view.dart';
import 'package:digital_menu/views/Chineese/chineese_content_mobile.dart';
import 'package:digital_menu/views/Specials/specials_content_mobile.dart';
import 'package:digital_menu/widgets/navigation_drawer/navigation_drawer.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("FINALLY");
    return ChineeseContentMobile();
  }
}
