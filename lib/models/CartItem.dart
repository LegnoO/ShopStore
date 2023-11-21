import 'package:final_project/models/Product.dart';

class CartItem extends Product {
  int quantity;

  CartItem(int id, String name, int price, this.quantity, String imageUrl,
      String category, String brand, String guaranteed)
      : super(id, name, price, imageUrl, category, brand, guaranteed) {
    quantity = 1;
  }

  @override
  String toString() {
    return '{id: $id, name: $name, price: $price, quantity: $quantity,imageUrl: $imageUrl, category: $category, brand: $brand, guaranteed: $guaranteed}';
  }
}
