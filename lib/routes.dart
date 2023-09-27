import 'package:get/get.dart';

import 'package:scarpkerala/screens/cart/cartview.dart';
import 'package:scarpkerala/screens/home/bottombarview.dart';
import 'package:scarpkerala/screens/home/homeview.dart';
import 'package:scarpkerala/screens/loginscereeen/otpscreen.dart';
import 'package:scarpkerala/screens/pricelist/priceview.dart';
import 'package:scarpkerala/screens/profile/profileview.dart';

class AppRoutes {
  static String otpscrn="/otpscreen";
  static String homemscreen = "/bottomscreen";
  static String cartscrn = "/cart";
  static String profilescrn = "/profile";
  static String pricescn = "/price";
  static String homescn = "/bottomscreen";





  static List<GetPage> page = [
    GetPage(name: otpscrn, page: ()=>PhoneNumberScreen()),
    GetPage(name: homemscreen, page: () => Bottombar()),
    GetPage(name: cartscrn, page: () => Cart()),
    GetPage(name: profilescrn, page: () => Profile()),
    GetPage(name: pricescn, page: () => Price()),
    GetPage(name: homescn, page: () => Home()),


  ];
}
