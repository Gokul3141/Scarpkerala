import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
   Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Text("Profile screen",style: TextStyle(fontSize: 15),),),
    );
  }
}
