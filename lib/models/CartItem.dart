import 'package:final_project/models/Product.dart';

class CartItem extends Product {
  int quantity;

  CartItem(
      int id,
      String name,
      int price,
      this.quantity,
      String imageUrl,
      String category,
      String brand,
      String guaranteed,
      String color,
      String status,
      String description,
      bool best_selling)
      : super(id, name, price, imageUrl, category, brand, guaranteed, color,
            status, description, best_selling) {
    quantity = 1;
  }

  @override
  String toString() {
    return '{id: $id, name: $name, price: $price, quantity: $quantity,imageUrl: $imageUrl, category: $category, brand: $brand, guaranteed: $guaranteed, color: $color, status: $status, description: $description, best_selling: $best_selling}';
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "price": price,
      "quantity": quantity,
      "imageUrl": imageUrl,
      "category": category,
      "brand": brand,
      "guaranteed": guaranteed,
      "color": color,
      "status": status,
      "description": description,
      "best_selling": best_selling
    };
  }
}
