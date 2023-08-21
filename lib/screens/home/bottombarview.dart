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
      backgroundColor: Colors.white10,
      body: Obx(
        () => Stack(
          children: [
            Obx(() => tabs[bottomcontol.tabindex.value]),
            // Bttmlisr().pages[_selectedIndex],
            Positioned(
              left: 0,
              right: 0,
              bottom: 0, // Set the bottom to 0 to place it at the bottom
              child: BottomNavigationBar(
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.lightGreenAccent[700]),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.price_change_outlined, color: Colors.lightGreenAccent[700]),
                    label: 'price list',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.add_shopping_cart_outlined,
                        color: Colors.lightGreenAccent[700]),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: Colors.lightGreenAccent[700],
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
            Positioned(
              top: -0,
              left: 3,
              right: 0,
              bottom: -700, // Adjust this value as needed
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          strokeAlign: StrokeAlign.center,
                          width: 3,
                          color: Colors.black),
                      color: Colors.white),
                  child: IconButton(
                    onPressed: () {
                      // Add your button's functionality here
                    },
                    icon: Icon(
                      Icons.ice_skating_rounded,
                      color: Colors.black,
                    ),
                    iconSize: 25, // Adjust the size as needed
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
