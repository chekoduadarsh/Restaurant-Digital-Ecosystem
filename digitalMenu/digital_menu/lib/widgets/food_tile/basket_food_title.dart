import 'package:flutter/material.dart';
import 'package:digital_menu/widgets/basket/basket.dart';
import 'package:digital_menu/widgets/food_tile/food_tile.dart';

class StatefulBasketFoodTile extends StatefulWidget {
  final String foodLogo;
  final String foodName;
  final String price;
  const StatefulBasketFoodTile(this.foodLogo, this.foodName, this.price);

  @override
  _StatefulBasketFoodTileState createState() => _StatefulBasketFoodTileState();
}

class _StatefulBasketFoodTileState extends State<StatefulBasketFoodTile> {
  String _count = "0";

  void _updateItemCounter() {
    setState(() {
      _count =
          shoppingbasket.getproductCount(widget.foodName).round().toString();
    });
  }

  @override
  void initState() {
    _updateItemCounter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Card(
        color: const Color(0x8E05C200),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: InkWell(
          onTap: () => print("ciao"),
          child: Row(
            children: <Widget>[
              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxWidth: 64,
                  maxHeight: 64,
                ),
                child: Image.asset(widget.foodLogo, fit: BoxFit.cover),
              ),
              Text(
                "   " + widget.foodName,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Spacer(),
              IconButton(
                  alignment: Alignment.centerLeft,
                  onPressed: () {
                    // add item to basket
                    Product product = Product(
                        id: widget.foodName,
                        cost: double.parse(widget.price.substring(1)),
                        path: widget.foodLogo);
                    shoppingbasket.addToCart(product);
                    _updateItemCounter();
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.green,
                  )),
              Container(
                child: Text(
                  _count,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              IconButton(
                  alignment: Alignment.centerRight,
                  onPressed: () {
                    // remove item to basket

                    Product product = Product(
                        id: widget.foodName,
                        cost: double.parse(widget.price.substring(1)),
                        path: widget.foodLogo);
                    shoppingbasket.removeFromCart(product);
                    _updateItemCounter();
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Colors.red,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
