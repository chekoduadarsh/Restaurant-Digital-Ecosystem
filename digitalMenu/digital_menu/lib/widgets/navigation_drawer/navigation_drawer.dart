import 'package:flutter/material.dart';
import 'package:digital_menu/views/Chineese/chineese_content_mobile.dart';
import 'package:digital_menu/views/Italian/italian_content_mobile.dart';
import 'package:digital_menu/widgets/navigation_drawer/drawer_item.dart';
import 'package:digital_menu/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:digital_menu/views/home/home_view.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
        border: Border.all(
          width: 1, //                   <--- border width here
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          NaviagationDrawerHeader(),
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 0.01, //                   <--- border width here
                ),
              ),
              child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onTap: () {
                    print("Clicked Italian");

                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            StatefulItalianHomeView()));
                  },
                  child: Draweritem("Italian", Icons.local_pizza))),
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 0.01, //                   <--- border width here
                ),
              ),
              child: InkWell(
                onTap: () {
                  print("Clicked Chineese");
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          StatefulChineeseHomeView()));
                },
                child: Draweritem("Chineese", Icons.rice_bowl),
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              )),
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 0.01, //                   <--- border width here
                ),
              ),
              child: InkWell(
                onTap: () {
                  print("Clicked Special");
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => StatefulHomeView()));
                },
                child: Draweritem("Special", Icons.star_border),
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              )),
        ],
      ),
    );
  }
}
