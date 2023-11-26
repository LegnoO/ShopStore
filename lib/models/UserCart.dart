import 'package:final_project/models/CartItem.dart';

class UserCart {
  String userName;
  String userId;
 
  List<CartItem> cartList;

  UserCart(this.userName, this.userId, this.cartList);

  @override
  String toString() {
    return '{userName: $userName, userId: $userId, cartList: $cartList}';
  }

  Map<String, dynamic> toMap() {
    return {
      "userName": userName,
      "userId": userId,
      "cartList": cartList.map((item) => item.toMap()).toList(),
    };
  }
}
