
import 'package:get/get.dart';

class ProfileController extends GetxController{
// Define the properties for user profile data
  RxString name = "".obs;
  RxString number = "".obs;

  // Getter methods for accessing user profile data
  String get getName => name.value;
  String get getNumber => number.value;

  // Setter methods for updating user profile data
  void setName(String newName) {
    name.value = newName;
  }

  void setNumber(String newNumber) {
    number.value = newNumber;
  }

// You can add additional methods for fetching and saving profile data

}

