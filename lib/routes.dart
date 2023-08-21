import 'package:get/get.dart';
import 'package:scarpkerala/screens/home/homeview.dart';

class AppRoutes {
  static String bottomscreen = "/bottomscreen";

  static List<GetPage> page = [
    GetPage(name: bottomscreen, page: () => Bottombar())
  ];
}
