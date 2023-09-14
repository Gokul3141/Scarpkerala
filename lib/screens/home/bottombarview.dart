import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scarpkerala/screens/home/homecontroller.dart';

import '../../colorui.dart';
import '../cart/cartview.dart';
import '../pricelist/priceview.dart';
import '../profile/profileview.dart';
import 'homeview.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bottomcontol = Get.put(Bottomcontroller());

    final List<Widget> tabs = [
      Home(),
      Price(),
      Cart(),
      Profile(),
    ];

    return Scaffold(
      body: Obx(() => tabs[bottomcontol.tabindex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          unselectedItemColor: Colors.cyan,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.price_change_outlined, color: Colors.white),
              label: 'price list',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart_outlined, color: Colors.white),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: bottomcontol.tabindex.value,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.lightGreenAccent[700],
          onTap: bottomcontol.TapBottom,
        ),
      ),
      floatingActionButton: Container(
        height: 55,
        width: 70,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
               // strokeAlign: StrokeAlign.center,
                width: 3,
                color: Colors.black),
            color: Colors.white),
        child: FloatingActionButton(
          splashColor: Colors.transparent,
          onPressed: () {},
          child: Icon(
            Icons.camera_alt,
            size: 30,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
