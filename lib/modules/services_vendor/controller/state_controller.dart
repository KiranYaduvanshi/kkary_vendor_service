import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/utils/list_data.dart';

class RadioController extends GetxController {
  RxInt radioExperience = 0.obs;
  RxInt radioworkDo = 0.obs;
  RxInt radioAge = (-1).obs;
  List<String> title = ListData.titles;
  List<List<String>> radiodDataList = ListData.experience;
  Map<dynamic, dynamic> mapData = {};

  @override
  void onInit() {
    super.onInit();

    title.map((e) => mapData[e] = 0);

    for (int i = 0; mapData.length > i; i++) {
      print("skdfkdjmfdf");
      String keys = mapData.keys.elementAt(i);
      String value = mapData[keys];
      print("$keys  $value");
    }
  }
}
