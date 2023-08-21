import 'package:get/get.dart';
import 'package:scarpkerala/screens/cart/cartview.dart';
import 'package:scarpkerala/screens/home/bottombarview.dart';
import 'package:scarpkerala/screens/home/homeview.dart';
import 'package:scarpkerala/screens/pricelist/priceview.dart';
import 'package:scarpkerala/screens/profile/profileview.dart';

class AppRoutes {
  static String homemscreen = "/bottomscreen";
  static String cartscrn = "/cart";
  static String profilescrn = "/bottomscreen";
  static String pricescn = "/bottomscreen";
  static String homescn = "/bottomscreen";





  static List<GetPage> page = [
    GetPage(name: homemscreen, page: () => Bottombar()),
    GetPage(name: cartscrn, page: () => Cart()),
    GetPage(name: profilescrn, page: () => Profile()),
    GetPage(name: pricescn, page: () => Price()),
    GetPage(name: homescn, page: () => Home()),


  ];
}
