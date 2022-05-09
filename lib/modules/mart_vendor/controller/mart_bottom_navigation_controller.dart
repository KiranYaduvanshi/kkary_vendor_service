import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/mart_home.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/earning_page.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/profile_screen.dart';

class MartBottomNavigationController extends GetxController {
  DateTime? currentBackPressTime;

  Rx<int> selectedIndex = 0.obs;
  final List<Widget> widgetOptions = const <Widget>[
    MartHome(),
    EarningPage(),
    ProfileScreen(),
    MartHome(),
  ];

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      Get.snackbar(
        "",
        "Please Press Again To Exit App",
        icon: const Icon(Icons.person, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
      return Future.value(false);
    }
    return Future.value(true);
  }

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
