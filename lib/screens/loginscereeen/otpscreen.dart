import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scarpkerala/routes.dart';

class PhoneNumberScreen extends StatelessWidget {
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(
              "ScrapKerala.in",
              style: TextStyle(
                  color: Colors.lightGreenAccent[700],
                  fontSize: 25,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Type Your Mobile number",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 250),
              child: Text(
                "Mobile Number",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Grey Outlined TextField
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(14), // Rounded corners
              ),
              child: TextField(
                controller: phoneNumberController,
                maxLength: 10,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  hintText: "Enter your number",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 16), // Center-align hint text
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Circular Shaped Button 1
                ElevatedButton(
                  onPressed: () {
                    // Add logic for the first button here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[350], // Grey background color
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10)), // Circular shape
                  ),
                  child: const Text('Skip', style: TextStyle(color: Colors.black)),
                ),
                // Circular Shaped Button 2
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.homescn);
                    // Add logic for the second button here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[350], // Grey background color
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10)), // Circular shape
                  ),
                  child:
                      const Text('Send OTP', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
