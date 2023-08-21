import 'package:get/get.dart';

class Bottomcontroller extends GetxController {
  var tabindex = 0.obs;
   void TapBottom(int index) {
    tabindex.value = index;
  }
}
