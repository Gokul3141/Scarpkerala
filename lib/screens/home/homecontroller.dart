import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Homemcontroller extends GetxController {
  var tabindex = 0.obs;
   void TapBottom(int index) {
    tabindex.value = index;
  }

  void openWhatsApp(String phoneNumber, String message) async {
    String url = "https://wa.me/$phoneNumber?text=$message";
    await launch(url);
  }
}
