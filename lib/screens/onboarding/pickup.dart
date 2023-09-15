import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickupBoarding extends StatelessWidget {
  const PickupBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("ScrapKerala.in"),
             // NetworkImage("https://media.istockphoto.com/id/1349380443/photo/food-delivery-app.webp?b=1&s=170667a&w=0&k=20&c=LKg6ndDNp5bVDxg5qtYmOBzTSDhoEdSEt4jyzK009OM=");
            Spacer(),
              Image.network("https://media.istockphoto.com/id/1349380443/photo/food-delivery-app.webp?b=1&s=170667a&w=0&k=20&c=LKg6ndDNp5bVDxg5qtYmOBzTSDhoEdSEt4jyzK009OM="),
          SizedBox(height: 20,),
              //   ), // Adjust the radius as needed
                 Container(
                  height: screenHeight * 0.3, // Adjust the container height
                    width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      topLeft: Radius.circular(100),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,

                    ),
                  color: Colors.green.shade200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[ Text(
                        'BOOK SCREP PICKUP',
                        style: TextStyle(color: Colors.black),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                      TextButton(onPressed: (){}, child: Text('Skip',
                      style: TextStyle(color: Colors.black),),
                      ),
                              ElevatedButton(

                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green.shade600,
                                ),
                                onPressed: (){},
                                child: Text('Next',
                                style: TextStyle(color: Colors.black),),
                                 ),
                            ],
                          ),
                        )
                     ],
                    ),
                  ),
                ),

            ],
          ),
        ),
      )
    );
  }
}

