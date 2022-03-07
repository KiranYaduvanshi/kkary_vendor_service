import 'package:get/state_manager.dart';

class HoursController extends GetxController {
  RxBool hs4 = true.obs;
  RxBool hs6 = false.obs;
  RxBool hs8 = false.obs;

  manageState(RxBool selected) {
    hs4.value = false;
    hs6.value = false;
    hs8.value = false;
    selected.value = true;
  }
}
