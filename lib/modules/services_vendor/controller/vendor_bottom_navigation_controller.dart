import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kkary_vendors/modules/mart_vendor/views/profile_screen.dart';
import 'package:kkary_vendors/modules/services_vendor/views/orders.dart';
import 'package:kkary_vendors/modules/services_vendor/views/vendor_home.dart';
import 'package:kkary_vendors/modules/services_vendor/views/vendor_services_status.dart';
import 'package:kkary_vendors/utils/app_strings.dart';

class VendorBottomNavigationController extends GetxController {
  DateTime? currentBackPressTime;
  Rx<int> selectedIndex = 0.obs;
  final List<Widget> widgetOptions =  <Widget>[
    VendorHome(),
    Orders(),
    VendorServiceStatus(),
    ProfileScreen(),
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

  @override
  void onInit() {
    AppStrings.userType = "2";
    super.onInit();
  }
}
