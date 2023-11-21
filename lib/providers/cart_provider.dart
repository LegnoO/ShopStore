import 'package:flutter/material.dart';
import 'package:final_project/models/CartItem.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import '../models/Product.dart';

class CartProvider extends ChangeNotifier {
  List<CartItem> cartItems = [];

  void addToCart(dynamic item) {
    if (item is Product) {
      if (cartItems.any((cartItem) => cartItem.id == item.id)) {
        CartItem existingItem = cartItems
            .firstWhere((existingCartItem) => existingCartItem.id == item.id);
        existingItem.quantity += 1;
      } else {
        CartItem cartItem = CartItem(
          item.id,
          item.name,
          item.price,
          1,
          item.imageUrl,
          item.category,
          item.brand,
          item.guaranteed,
        );
        cartItems.add(cartItem);
      }
    }
    notifyListeners();
  }

  int totalPrice() {
    int totalPrice = cartItems
        .map((CartItem item) => item.price * item.quantity)
        .reduce((int value, int element) => value + element);
    return totalPrice;
  }

  void removeCartItem(CartItem item) {
    if (cartItems.any((cartItem) => cartItem.id == item.id)) {
      CartItem existingItem = cartItems
          .firstWhere((existingCartItem) => existingCartItem.id == item.id);
      cartItems.remove(existingItem);
    }
  }

  void increaseQuantity(CartItem item) {
    if (cartItems.any((cartItem) => cartItem.id == item.id)) {
      CartItem existingItem = cartItems
          .firstWhere((existingCartItem) => existingCartItem.id == item.id);
      existingItem.quantity++;
    }

    notifyListeners();
  }

  void decreaseQuantity(CartItem item) {
    if (item.quantity > 1) {
      if (cartItems.any((cartItem) => cartItem.id == item.id)) {
        CartItem existingItem = cartItems
            .firstWhere((existingCartItem) => existingCartItem.id == item.id);
        existingItem.quantity--;
      }
    }

    notifyListeners();
  }

  List<CartItem> getState() {
    return cartItems;
  }

  void printList() {
    print(cartItems);
  }
}
