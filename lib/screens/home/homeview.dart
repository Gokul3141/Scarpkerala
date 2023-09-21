import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:scarpkerala/colorui.dart';
import 'package:scarpkerala/routes.dart';
import 'package:scarpkerala/screens/home/homecontroller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final homecontroll =Get.put(Homemcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-vector/mysterious-mafia-man-smoking-cigarette_52683-34828.jpg?w=740&t=st=1694068448~exp=1694069048~hmac=07e0318accb87e37a1fdcf4ec8b33c2badfc0f7edc65adca93eff5d7da342918"),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Column(
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Name",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: Get.width / 2.6,
                      ),
                      IconButton(
                          splashColor: Colors.white,
                          onPressed: () {
                            homecontroll.openWhatsApp("9544204366", "hello");
                            
                          },
                          icon: Icon(
                            Icons.call_outlined,
                            color: secondarycolor,
                          )),
                      IconButton(
                          splashColor: Colors.white,
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_outlined,
                            color: secondarycolor,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: Get.height / 25,
                  ),
                  Container(
                    height: Get.height / 18,
                    width: Get.width / 1.2,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(17), // Rounded corners
                    ),
                    child: const TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        icon: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        hintText: "Search Scrap Item Here",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10), // Center-align hint text
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 50,
                  ),
                  ImageSlideshow(
                    autoPlayInterval: 3000,
                    isLoop: true,
                    indicatorColor: Colors.blue,
                    indicatorBackgroundColor: Colors.grey,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://img.freepik.com/free-photo/old-rusty-junk-garbage-steel-rubber_1150-10991.jpg?w=996&t=st=1694098600~exp=1694099200~hmac=7bf3664a043f95e92bd6ffd1d6bf3377f05d50bb75f116481963bedc9dff8807"),

                                fit: BoxFit.cover)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                                image: NetworkImage(
                                  "https://img.freepik.com/free-photo/assortment-garbage-reuse_23-2148115634.jpg?w=996&t=st=1694098708~exp=1694099308~hmac=f5546c4d3fd0b16af5bb96478d451ad098b1b169b61b41ee0a5608abbb4447ae",
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: GridView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(18),
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 25,
                        crossAxisSpacing: 30,
                        mainAxisExtent: 160,
                        crossAxisCount: 2, // Number of columns in the grid
                      ),
                      itemCount: 8, // Number of grid items
                      itemBuilder: (context, index) {
                        return InkWell(

                          splashColor: secondarycolor,
                          onTap: () {
                            Get.toNamed(AppRoutes.pricescn);
// Handle grid item tap
                          },
                          child: Container(
                              height: Get.height / 0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    17,
                                  ),
                                  border:
                                  Border.all(color: Colors.grey, width: 1.9)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(
                                    image: NetworkImage(
                                        "https://img.freepik.com/free-photo/drawer-workshop_23-2147773382.jpg?w=996&t=st=1694685447~exp=1694686047~hmac=a46e4ebe4288352aefe994fc1a9a7ee562ab147b7afdfd45bea73429504e6b41",
                                        scale: 8),
                                  ),
                                  Text(
                                    "Papper",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              )),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
