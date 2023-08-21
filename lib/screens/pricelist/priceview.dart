import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        "Price screen",
        style: TextStyle(fontSize: 15),
      ),
    ));
  }
}
