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
        () => Stack(
          children: [
            Obx(() => tabs[bottomcontol.tabindex.value]),
            // Bttmlisr().pages[_selectedIndex],
            Positioned(
              left: 0,
              right: 0,
              bottom: 0, // Set the bottom to 0 to place it at the bottom
              child: BottomNavigationBar(
                unselectedItemColor: Colors.cyan,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.white),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon:
                        Icon(Icons.price_change_outlined, color: Colors.white),
                    label: 'price list',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.add_shopping_cart_outlined,
                        color: Colors.white),
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
          ],
        ),
      ),
      backgroundColor: Colors.white10,
    );
  }
}
