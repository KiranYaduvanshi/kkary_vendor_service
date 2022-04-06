import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/mart_home.dart';
import 'package:velocity_x/velocity_x.dart';

class MartBottomNavigationController extends GetxController {
  DateTime? currentBackPressTime;

  Rx<int> selectedIndex = 0.obs;
  final List<Widget> widgetOptions = const <Widget>[
    MartHome(),
    MartHome(),
    MartHome(),
    MartHome(),
  ];

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      return Future.value(false);
    }
    return Future.value(true);
  }

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
