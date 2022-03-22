import 'package:flutter/material.dart';
import 'package:digital_menu/views/home/home_content_desktop.dart';
import 'package:digital_menu/views/home/home_content_mobile.dart';
import 'package:digital_menu/widgets/centeredView/centerd_view.dart';
import 'package:digital_menu/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:digital_menu/widgets/navigationbar/navigation_bar.dart';
import 'package:digital_menu/widgets/basket/basket_navbar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:digital_menu/widgets/basket/basket_navbar.dart';
import 'package:digital_menu/widgets/food_tile/food_tile.dart';

class StatefulHomeView extends StatefulWidget {
  StatefulHomeView({Key? key}) : super(key: key);

  @override
  _StatefulHomeViewState createState() => _StatefulHomeViewState();
}

class _StatefulHomeViewState extends State<StatefulHomeView> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _housetiles = [];

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: Colors.black,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              Navigation_bar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: SpecialsContentMobile(),
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

class SpecialsContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        StatefullFoodTile(
            "assets/menuItems/specials/Steak.jpeg", "Steak", "€520"),
        StatefullFoodTile(
            "assets/menuItems/specials/Ramen.jpg", "Ramen", "€120"),
        StatefullFoodTile(
            "assets/menuItems/specials/MapoTofu.jpg", "Mapo Tofu", "€180"),
        StatefullFoodTile(
            "assets/menuItems/specials/Nachos.jpg", "Nachos", "€50"),
        StatefullFoodTile(
            "assets/menuItems/specials/Pasta.jpg", "Cheese Pasta", "€250"),
      ],
    );
  }
}
