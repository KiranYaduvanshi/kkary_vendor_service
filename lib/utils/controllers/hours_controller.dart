import 'package:get/state_manager.dart';

class HoursController extends GetxController {
  RxBool hs4 = false.obs;
  RxBool hs6 = true.obs;
  RxBool hs8 = false.obs;
  List<String> amount = ["19,000", "27,000", "46,000"];
  RxString selectedAmount = "".obs;

  @override
  void onInit() {
    selectedAmount.value = amount[1];
  }

  manageState(RxBool selected) {
    hs4.value = false;
    hs6.value = false;
    hs8.value = false;
    selected.value = true;

    hs4.value
        ? selectedAmount.value = amount[0]
        : hs8.value
            ? selectedAmount.value = amount[2]
            : selectedAmount.value = amount[1];
  }
}
