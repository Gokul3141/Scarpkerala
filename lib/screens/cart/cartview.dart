import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
   Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Text("Cart screen",style: TextStyle(fontSize: 15),),),
    );
  }
}
