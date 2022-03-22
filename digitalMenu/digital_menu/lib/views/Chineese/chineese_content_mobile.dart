import 'package:flutter/material.dart';
import 'package:digital_menu/views/home/home_content_desktop.dart';
import 'package:digital_menu/views/home/home_content_mobile.dart';
import 'package:digital_menu/widgets/centeredView/centerd_view.dart';
import 'package:digital_menu/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:digital_menu/widgets/navigationbar/back_button.dart';
import 'package:digital_menu/widgets/navigationbar/navigation_bar.dart';
import 'package:digital_menu/views/Chineese/chineese_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:digital_menu/widgets/food_tile/food_tile.dart';
import 'package:digital_menu/widgets/navigation_drawer/navigation_drawer.dart';

import 'package:digital_menu/widgets/basket/basket_navbar.dart';

class StatefulChineeseHomeView extends StatefulWidget {
  StatefulChineeseHomeView({Key? key}) : super(key: key);

  @override
  _StatefulChineeseHomeViewState createState() =>
      _StatefulChineeseHomeViewState();
}

class _StatefulChineeseHomeViewState extends State<StatefulChineeseHomeView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: Colors.black,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBarBackButton(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: ChineeseContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              )
            ],
          ),
        ),
        drawer: NavigationDrawer(),
        bottomNavigationBar: BasketBottomBavigationBar(0),
      ),
    );
  }
}

class ChineeseContentMobile extends StatelessWidget {
  const ChineeseContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        StatefullFoodTile(
            "assets/menuItems/chineese/FriedRice.jpg", "Fried Rice", "€520"),
        StatefullFoodTile(
            "assets/menuItems/chineese/Dumplings.jpg", "Dumplings", "€120"),
        StatefullFoodTile(
            "assets/menuItems/chineese/Dumplings.jpg", "Fried Chicken", "€180"),
        StatefullFoodTile(
            "assets/menuItems/chineese/EggRice.jpg", "Egg Rice", "€50"),
        StatefullFoodTile(
            "assets/menuItems/chineese/Noodles.jpg", "Noodles", "€250")
      ],
    );
  }
}
