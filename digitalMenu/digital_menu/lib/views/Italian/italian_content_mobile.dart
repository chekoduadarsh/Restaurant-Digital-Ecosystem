import 'package:flutter/material.dart';
import 'package:digital_menu/views/home/home_content_desktop.dart';
import 'package:digital_menu/views/home/home_content_mobile.dart';
import 'package:digital_menu/widgets/centeredView/centerd_view.dart';
import 'package:digital_menu/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:digital_menu/widgets/navigationbar/back_button.dart';
import 'package:digital_menu/widgets/navigationbar/navigation_bar.dart';
import 'package:digital_menu/views/Italian/italian_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:digital_menu/widgets/food_tile/food_tile.dart';
import 'package:digital_menu/widgets/navigation_drawer/navigation_drawer.dart';

import 'package:digital_menu/widgets/basket/basket_navbar.dart';

class StatefulItalianHomeView extends StatefulWidget {
  StatefulItalianHomeView({Key? key}) : super(key: key);

  @override
  _StatefulItalianHomeViewState createState() =>
      _StatefulItalianHomeViewState();
}

class _StatefulItalianHomeViewState extends State<StatefulItalianHomeView> {
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
                  mobile: ItalianContentMobile(),
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

class ItalianContentMobile extends StatelessWidget {
  const ItalianContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        StatefullFoodTile(
            "assets/menuItems/italian/pizza.jpg", "Pizza", "€520"),
        StatefullFoodTile(
            "assets/menuItems/italian/Ravioli.jpg", "Ravioli", "€120"),
      ],
    );
  }
}
