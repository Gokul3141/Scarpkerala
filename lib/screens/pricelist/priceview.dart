import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../colorui.dart';
import '../../routes.dart';

class Price extends StatelessWidget {
  Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 20, top: 45, bottom: 10),
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
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Papper",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(18),
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 30,
                      mainAxisExtent: 160,
                      crossAxisCount: 3, // Number of columns in the grid
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return InkWell(
                        splashColor: secondarycolor,
                        onTap: () {
                          Get.toNamed(AppRoutes.cartscrn);
                          // Handle grid item tap
                        },
                        child: Container(
                          height: Get.height / 0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(color: Colors.grey, width: 1.9),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: NetworkImage(
                                  "https://img.freepik.com/free-photo/drawer-workshop_23-2147773382.jpg?w=996&t=st=1694685447~exp=1694686047~hmac=a46e4ebe4288352aefe994fc1a9a7ee562ab147b7afdfd45bea73429504e6b41",
                                  scale: 8,
                                ),
                              ),
                              Text(
                                "Paper",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "100",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  // Add some space between the GridView and the button
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.cartscrn);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}