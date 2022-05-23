import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/list_data.dart';

class PartnerController extends GetxController {
//Name
  RxString name = "".obs;
  RxBool check = false.obs;

  //Work
  Rx<String> work = "Work".obs;
  Rx<int> radioworkDo = (-1).obs;
  List<String> workTitle = ListData.workTitle;

  //Location
  Rx<String> location = "Location".obs;
  RxInt radiolocation = (-1).obs;
  List<String> locationTiles = ListData.location;

  //
  Rx<String> city = "City".obs;
  RxInt radiocity = (-1).obs;
  List<String> cityTiles = ListData.city;

  void continueButton() {
    if (name.value.isNotEmpty &&
        radiolocation > -1 &&
        radioworkDo > -1 &&
        check.isTrue) {
      print("Sucess");
      Get.toNamed(AppRoutes.yourWork);
    } else {
      print("Failuer");
      Get.toNamed(AppRoutes.yourWork);
    }
  }
}
