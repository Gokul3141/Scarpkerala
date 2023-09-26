import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 15, top: 35, bottom: 10),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset(
                'images/return.png',
                width: 40,
                height: 40,
              ),
            ),
          ),
          const Center(
            child: Text(
              "Cart Screen",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
