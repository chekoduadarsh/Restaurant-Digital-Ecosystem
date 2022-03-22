import 'package:flutter/material.dart';
import 'package:digital_menu/views/basket/basket_view.dart';
import 'package:digital_menu/views/home/home_view.dart';

class BasketBottomBavigationBar extends StatefulWidget {
  int index = 0;
  BasketBottomBavigationBar(this.index);

  @override
  _BasketBottomBavigationBarState createState() =>
      _BasketBottomBavigationBarState();
}

class _BasketBottomBavigationBarState extends State<BasketBottomBavigationBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => StatefulHomeView()));
            break;
          }
        case 1:
          {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => BasketPage()));
            break;
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.index,
      fixedColor: Colors.black,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          label: 'Basket',
          icon: Icon(Icons.shopping_basket),
          backgroundColor: Colors.red,
        ),
      ],
    );
  }
}
