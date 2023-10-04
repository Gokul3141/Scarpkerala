import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scarpkerala/routes.dart';

import 'cartconteroller.dart';

class Cart extends StatelessWidget {
  final CartController cartController = Get.put(CartController());

  Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartPageUI(cartController: cartController),
    );
  }
}

class CartPageUI extends StatelessWidget {
  final CartController cartController;

  CartPageUI({required this.cartController});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left:1, top: 15, bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      'assets/return.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 70),
              child: Center(
                  child: Text(
                "Cart",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
            ),
            CartItem(
              productName: "Paper",
              category: "News Paper,Carton Box",
              weight: "20 KG",
              imageUrl: "assets/product1.jpg",
            ),
            CartItem(
              productName: "E-Waste",
              category: "News Paper,Carton Box",
              weight: "20 KG",
              imageUrl: "assets/product2.jpg",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 70),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Get.toNamed(AppRoutes.weigt);
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CartItem extends StatelessWidget {
  final String productName;
  final String category;
  final String weight;
  final String imageUrl;

  CartItem({
    required this.productName,
    required this.category,
    required this.weight,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/cart.jpg',
            height: 70,
            width: 70,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(category),
                Text(weight),
              ],
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.highlight_remove, size: 20),
                onPressed: () {
                  // Remove item from cart logic
                },
              ),
              TextButton.icon(
                onPressed: () {
                  // Edit item logic
                },
                icon: const Icon(Icons.edit, color: Colors.black, size: 20),
                label: const Text(
                  "Edit",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
