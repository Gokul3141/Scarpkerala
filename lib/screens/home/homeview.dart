import 'package:flutter/material.dart';

import '../../colorui.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[700],
      appBar: AppBar(
        title: Text('Bottom Navigation Bar with Centered Button'),
      ),
      body: Stack(
        children: [
          // Bttmlisr().pages[_selectedIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0, // Set the bottom to 0 to place it at the bottom
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.white),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.white),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business, color: Colors.white),
                  label: 'Business',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.school,
                    color: Colors.white,
                  ),
                  label: 'School',
                ),
              ],
              // currentIndex: _selectedIndex,
              backgroundColor: Colors.black,
              selectedItemColor: Colors.lightGreenAccent[700],
              // onTap: _onItemTapped,
            ),
          ),
          Positioned(
            top: -0,
            left: 3,
            right: 0,
            bottom: -565,
            // Adjust this value as needed
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        //strokeAlign: StrokeAlign.center,
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
    );
  }
}
