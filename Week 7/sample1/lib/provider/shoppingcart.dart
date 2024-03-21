import 'package:flutter/material.dart';
import 'package:sample1/model/item.dart';

class ShoppingCart extends ChangeNotifier {
  List<Item> _products = [
    Item("Shampoo", 12.5, 123),
    Item("Soap", 13.8, 862),
    Item("Toothpaste", 7.54, 532)
  ];

  List<Item> get cart => _products;

  void addItem(Item item) {
    _products.add(item);
  }

  void removeItem(Item item) {
    _products.remove(item);
  }
}
