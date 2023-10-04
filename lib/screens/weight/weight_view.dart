import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scarpkerala/routes.dart';
import 'package:scarpkerala/screens/weight/weight_controller.dart';

class GridScreen extends StatelessWidget {
  GridScreen({Key? key}) : super(key: key);
  final weitcontroll = Get.put(weightcontrollr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.green[400],
            padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select Approximate                                   ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Weight                                                         ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  weitcontroll.selectedWeight = '10 - 20 KG';
                },
                child: ContainerItem(
                  '10 - 20 KG',
                  width: 150,
                  height: 80,
                  isSelected: weitcontroll.selectedWeight == '10 - 20 KG',
                ),
              ),
              GestureDetector(
                onTap: () {
                  weitcontroll.selectedWeight = '20 - 50 KG';
                },
                child: ContainerItem(
                  '20 - 50 KG',
                  width: 150,
                  height: 80,
                  isSelected: weitcontroll.selectedWeight == '20 - 50 KG',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  weitcontroll.selectedWeight == '50 - 100 KG';
                },
                child: ContainerItem(
                  '50 - 100 KG',
                  width: 150,
                  height: 80,
                  isSelected: weitcontroll.selectedWeight == '50 - 100 KG',
                ),
              ),
              GestureDetector(
                onTap: () {
                  weitcontroll.selectedWeight == 'More than 100 KG';
                },
                child: ContainerItem(
                  'More than 100 KG',
                  width: 150,
                  height: 80,
                  isSelected: weitcontroll.selectedWeight == 'More than 100 KG',
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Minimum Scrap Requirements',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                Text(
                  '10 KG of scrap or Scrap item with a total value of at least 200. Else a pickup fee of 40 will be applied.',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(AppRoutes.addres);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            minimumSize: const Size(200, 50),
          ),
          child: const Text('Continue'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: null,
    );
  }
}

class ContainerItem extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final bool isSelected;

  ContainerItem(this.title,
      {required this.width, required this.height, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
          if (isSelected)
            Positioned(
              top: 5,
              right: 5,
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: const Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
