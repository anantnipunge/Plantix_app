import 'package:flutter/material.dart';

import '../Models/cart.dart';

class CartProvider extends ChangeNotifier {
  Cart cart = Cart();

  void addToCart(Item product) {
    cart.addProduct(product);
    notifyListeners();
  }
}