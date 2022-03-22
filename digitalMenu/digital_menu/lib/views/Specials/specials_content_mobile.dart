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

class StatefulHomeView extends StatefulWidget {
  StatefulHomeView({Key? key}) : super(key: key);

  @override
  _StatefulHomeViewState createState() => _StatefulHomeViewState();
}

class _StatefulHomeViewState extends State<StatefulHomeView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBarBackButton(),
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
  const SpecialsContentMobile({Key? key}) : super(key: key);

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
        TextInputWidget(),
      ],
    );
  }
}

class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  String text = "";
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void changeText(Text) {
    setState(() {
      this.text = Text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        controller: this.controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.message),
          labelText: "Type a message:",
        ),
        onChanged: (text) => changeText(text),
      ),
      Text(this.text)
    ]);
  }
}
