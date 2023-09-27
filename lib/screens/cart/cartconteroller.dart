import 'package:get/get.dart';

class CartController extends GetxController {
  final RxList<CartItemModel> cartItems = <CartItemModel>[].obs;

  void addToCart(CartItemModel item) {
    cartItems.add(item);
  }

  void removeFromCart(CartItemModel item) {
    cartItems.remove(item);
  }
}

class CartItemModel {
  final String productName;
  final String category;
  final String weight;
  final String imageUrl;

  CartItemModel({
    required this.productName,
    required this.category,
    required this.weight,
    required this.imageUrl,
  });
}