import 'package:flutter/material.dart';

class Product {
  final String id;
  final double cost;
  final String path;
  Product({required this.id, required this.cost, required this.path});
}

class Basket with ChangeNotifier {
  List<Product> products = [];

  double get total {
    return products.fold(0.0, (double currentTotal, Product nextProduct) {
      return currentTotal + nextProduct.cost;
    });
  }

  void addToCart(Product product) => products.add(product);

  void removeFromCart(Product product) {
    for (var i = 0; i < products.length; i++) {
      if (product.id == products[i].id) {
        products.removeAt(i);
        break;
      }
    }
    products.remove(product);
    notifyListeners();
  }

  double getproductCount(id) {
    double count = 0;
    for (var i = 0; i < products.length; i++) {
      if (products[i].id == id) {
        count++;
      }
    }
    notifyListeners();
    return count;
  }

  void printItems() {
    for (var i = 0; i < products.length; i++) {
      print(products[i].id);
    }
  }

  Set getItemids() {
    Set uniqueIds = new Set();
    for (var i = 0; i < products.length; i++) {
      uniqueIds.add(products[i].id);
    }
    return uniqueIds;
  }

  List getItems() {
    List items = [];
    Set ids = getItemids();
    Set uniqueIds = new Set();
    for (var j = 0; j < products.length; j++) {
      if (uniqueIds.add(products[j].id)) {
        items.add([
          products[j].path,
          products[j].id,
          products[j].cost,
          //getproductCost(ids[i])
        ]);
      }
    }

    return items;
  }
}
