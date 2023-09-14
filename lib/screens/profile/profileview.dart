import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:scarpkerala/colorui.dart';
import 'profilecontroller.dart';
class Profile extends StatelessWidget {
   Profile({Key? key}) : super(key: key);
   final ProfileController controller =Get.put (ProfileController());

   TextEditingController nameController = TextEditingController();
   TextEditingController numberController = TextEditingController();

   String initialName = "Your Name"; // Replace with the actual initial name
   String initialNumber = "Your Number"; // Replace with the actual initial number
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: null, // Hide the default app bar
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             height: 200,
             color: secondarycolor,
             padding: EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0),
             child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   IconButton(
                     icon: Icon(Icons.arrow_back),
                     onPressed: () {
                       // Handle back button press
                     },
                   ),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       GestureDetector(
                         onTap: () {
                           ProfileImageBottumsheet(context);
                         },
                         child: CircleAvatar(
                           backgroundImage: NetworkImage(
                               'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp'),
                           radius: 40.0,
                         ),
                       ),

                       SizedBox(width: 16.0),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Title(
                                 color: Colors.greenAccent,
                                 child: Text(
                                   'Profile',
                                   style: TextStyle(
                                       fontSize: 20.0,
                                       fontWeight: FontWeight.bold),
                                 )),
                             SizedBox(
                               height: 20,
                             ),
                             Text(
                               'Your Name',
                               style: TextStyle(
                                 fontSize: 18.0,
                                 fontWeight: FontWeight.w400,
                               ),
                             ),
                             Text(
                               'Your Number',
                               style: TextStyle(
                                 fontSize: 16.0,
                               ),
                             ),
                           ],
                         ),
                       ),
                       Spacer(),
                       Column(
                         children: [
                           TextButton.icon(
                               onPressed: () {
                                 ShowDialog(context);
                               },
                               icon: Icon(
                                 Icons.edit,
                                 color: thridcolor,
                               ),
                               label: Text(
                                 'Edit',
                                 style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: thridcolor),
                               )),
                         ],
                       ),
                     ],
                   ),
                 ]),
           ),
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: ListView(
                 children: [
                   ListTile(
                     leading: Icon(Icons.qr_code_2, color: thridcolor),
                     title: Text('Scan QR Code',
                         style: TextStyle(color: thridcolor)),
                   ),
                   ListTile(
                     leading: Icon(Icons.handshake, color: thridcolor),
                     title: Text('Society Collabration',
                         style: TextStyle(color: thridcolor)),
                   ),
                   ListTile(
                     leading: Icon(Icons.av_timer_outlined, color: thridcolor),
                     title: Text('Order History',
                         style: TextStyle(color: thridcolor)),
                   ),
                   ListTile(
                     leading:
                     Icon(Icons.screen_share_outlined, color: thridcolor),
                     title:
                     Text('Share Us', style: TextStyle(color: thridcolor)),
                   ),
                   ListTile(
                     leading: Icon(Icons.help_outline, color: thridcolor),
                     title:
                     Text('Need Help', style: TextStyle(color: thridcolor)),
                   ),
                   ListTile(
                     leading: Icon(Icons.logout, color: thridcolor),
                     title: Text(
                       'Logout',
                       style: TextStyle(color: thridcolor),
                     ),
                   ),

                   // Add more list items as needed
                 ],
               ),
             ),
           ),
         ],
       ),
     );
   }

   void ProfileImageBottumsheet(BuildContext context) {
     showModalBottomSheet(
         backgroundColor: secondarycolor,
         context: context,
         shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.only(
                 topRight: Radius.circular(20), topLeft: Radius.circular(20))),
         builder: (BuildContext context) {
           return Column(mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 ListTile(
                   leading: Icon(
                       Icons.camera_alt_outlined, size: 30, color: thridcolor),
                   title: Text("Camera", style: TextStyle(color: thridcolor)),
                   onTap: () {
                     Pickecamera();
                   },
                 ),
                 Divider(
                   color: thridcolor,
                   thickness: 1,
                 ),
                 ListTile(
                   leading: Icon(Icons.photo, size: 30, color: thridcolor),
                   title: Text("Gallery", style: TextStyle(color: thridcolor)),
                   onTap: () {
                     PickeGallery();
                   },
                 ),
               ]);
         });



   }

   Future Pickecamera() async {
     final image = await ImagePicker().pickImage(source: ImageSource.camera);
   }

   Future PickeGallery() async {
     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
   }
   void ShowDialog(BuildContext context) {
     nameController.text = initialName; // Initialize with the current name
     numberController.text = initialNumber; // Initialize with the current number

     showDialog(
       context: context,
       builder: (BuildContext context) {
         return AlertDialog(
           backgroundColor: primarycolor,
           title: Text("Edit Profile"),
           content: Column(
             mainAxisSize: MainAxisSize.min,
             children: <Widget>[
               TextField(
                 controller: nameController,
                 decoration: InputDecoration(labelText: "Name"),
               ),
               TextField(
                 controller: numberController,
                 decoration: InputDecoration(labelText: "Number"),
               ),
             ],
           ),
           actions: <Widget>[
             TextButton(
               onPressed: () {
                 Get.back();
               },
               child: Text("Cancel",style: TextStyle(color: thridcolor),),
             ),
             TextButton(
               onPressed: () {
                 // Save the changes and update the initial values
                 initialName = nameController.text;
                 initialNumber = numberController.text;

                 // You can add code here to save the changes to your profile
                 // controller or database.

                 Get.back();// Close the dialog
               },
               child: Text("Save",style: TextStyle(color:thridcolor),),
             ),
           ],
         );
       },
     );
   }
}