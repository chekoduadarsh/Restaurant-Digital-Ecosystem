import 'package:flutter/material.dart';
import 'package:digital_menu/widgets/basket/basket.dart';

Basket shoppingbasket = Basket();

class StatefullFoodTile extends StatefulWidget {
  final String foodLogo;
  final String foodName;
  final String price;
  const StatefullFoodTile(this.foodLogo, this.foodName, this.price);

  @override
  _StatefullFoodTileState createState() => _StatefullFoodTileState();
}

class _StatefullFoodTileState extends State<StatefullFoodTile> {
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
        color: const Color(0xFFFFFFFFF),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: InkWell(
          onTap: () => print("ciao"),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset(widget.foodLogo,
                    // width: 300,
                    height: 150,
                    fit: BoxFit.fill),
              ),
              ListTile(
                title: Text(widget.foodName),
                subtitle: Text(widget.price),
              ),
              Container(
                  color: const Color(0x8E05C200),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
