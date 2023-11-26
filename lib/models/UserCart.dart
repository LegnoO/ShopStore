import 'package:final_project/models/CartItem.dart';

class UserCart extends CartItem {
  String userName;
  String userId;
  List<CartItem> cartList;

  UserCart(
    super.id,
    super.name,
    super.price,
    super.quantity,
    super.imageUrl,
    super.category,
    super.brand,
    super.guaranteed,
    super.color,
    super.status,
    super.description,
    super.best_selling, {
    required this.userName,
    required this.userId,
    required this.cartList,
  });

  @override
  String toString() {
    return '{userName: $userName, userId: $userId, id: $id, name: $name, price: $price, quantity: $quantity, imageUrl: $imageUrl, category: $category, brand: $brand, guaranteed: $guaranteed, color: $color, status: $status, description: $description, best_selling: $best_selling}';
  }

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'userId': userId,
      'cartList': cartList.map((item) => item.toMap()).toList()
    };
  }
}
