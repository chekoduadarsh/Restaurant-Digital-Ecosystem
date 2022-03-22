import 'package:flutter/material.dart';
import 'package:digital_menu/widgets/basket/basket_navbar.dart';
import 'package:digital_menu/widgets/centeredView/centerd_view.dart';
import 'package:digital_menu/widgets/food_tile/basket_food_title.dart';
import 'package:digital_menu/widgets/food_tile/food_tile.dart';
import 'package:digital_menu/widgets/basket/basket.dart';
import 'package:digital_menu/widgets/navigationbar/back_button.dart';
import 'package:digital_menu/widgets/navigationbar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:async';
import 'dart:convert';

class BasketPage extends StatefulWidget {
  BasketPage({Key? key}) : super(key: key);

  @override
  _BasketPageState createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  var _postsJson;

  @override
  Widget build(BuildContext context) {
    final tableController = TextEditingController();

    final numberController = TextEditingController();

    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
              backgroundColor: Colors.black,
              body: StatefulBasketPage(),
              bottomNavigationBar: BasketBottomBavigationBar(1),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    backgroundColor: const Color(0xFFFFFFFFF),
                    title: const Text('Billing Details'),
                    actions: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      TextField(
                        controller: numberController,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Enter Phone Number'),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      TextField(
                        controller: tableController,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: 'Table Number'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () async {
                          /*final ref = fb.reference();

                          var items = shoppingbasket.getItems();
                          var items_list = [];

                          for (var i = 0; i < items.length; i++) {
                            var item = {};
                            item[items[i][1]] =
                                shoppingbasket.getproductCount(items[i][1]);
                            items_list.add(item);
                          }

                          var order = {tableController.text: items_list};

                          print(order);
                          ref.child(numberController.text).set(order);*/
                          //postData();
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
                label: const Text("Order Now!"),
                icon: const Icon(Icons.euro),
                backgroundColor: Colors.green,
              ),
            ));
  }
}

class StatefulBasketPage extends StatefulWidget {
  StatefulBasketPage({Key? key}) : super(key: key);

  @override
  _StatefulBasketPageState createState() => _StatefulBasketPageState();
}

class _StatefulBasketPageState extends State<StatefulBasketPage> {
  @override
  Widget build(BuildContext context) {
    return CenteredView(
        child: Column(children: <Widget>[
      NavigationBarBackButton(),
      Expanded(
        child: ScreenTypeLayout(
          mobile: BasketContentsMobile(),
        ),
      )
    ]));
  }
}

class BasketContentsMobile extends StatelessWidget {
  const BasketContentsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = shoppingbasket.getItems();

    List<Widget> _basketiems = [];

    for (var i = 0; i < items.length; i++) {
      _basketiems.add(StatefulBasketFoodTile(items[i][0], items[i][1], "123"));
    }

    return ListView(children: _basketiems);
  }
}
