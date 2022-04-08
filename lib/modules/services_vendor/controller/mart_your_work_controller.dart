import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:kkary_vendors/routes/app_routes.dart';
import 'package:kkary_vendors/utils/list_data.dart';

class WorkClassController extends GetxController {
  List<List<String>> radiodDataList = ListData.experience;
  List<String> title = ListData.titles;
  Map<dynamic, dynamic> mapData = {};
  List<RxInt> radio = <RxInt>[].obs;
  bool allSelected = false;

  @override
  void onInit() {
    super.onInit();
    int i = 0;
    while (i < title.length) {
      radio.add((-1).obs);
      i++;
    }
    print(radio.length);
  }

  continueButton() {
    int i = 0;
    while (i < title.length) {
      if (radio[i].value != -1) {
        allSelected = true;
      } else {
        allSelected = false;
        break;
      }
      debugPrint("${radio[i].value} +  $i");
      i++;
    }
    Get.toNamed(AppRoutes.location);
    // if (allSelected == false) {
    //   print("Fail");
    // } else {
    //   Get.toNamed(AppRoutes.location);
    // }
  }

  onSelectRadioOption(int index) {
    // radi.value = workTitle[index];
    print("my list  value-------  $index");
  }
}
